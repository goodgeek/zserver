#include <iostream>
#include <sys/types.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <functional>
#include <string.h>
#include <signal.h>
#include <random>
#include <chrono>
#include <thread>
#include <sqlite3.h>
#include "tcpserver.h"

bool TcpServer::quitFlag_ = false;

TcpServer::TcpServer(int serverPort) : serverPort_(serverPort)
{
}

bool TcpServer::startServer()
{
	sockfd_ = socket(AF_INET, SOCK_STREAM, 0);

	if (sockfd_ == -1) {
		std::cout << "Create socket failed:" << strerror(errno) << std::endl;
		return false;
	}

	struct sigaction act;
	
	act.sa_handler = [](int signum) { quitFlag_ = true; std::cout << "Exit server" << std::endl;};
	sigemptyset(&act.sa_mask);
	act.sa_flags = 0;
	if (sigaction(SIGINT, &act, NULL) == -1) {
		std::cout << "sigaction failed" << strerror(errno) << std::endl;
		close(sockfd_);
		return false;
	}

	struct sockaddr_in serverAddr; 

	memset(&serverAddr, 0, sizeof(struct sockaddr_in));
	serverAddr.sin_addr.s_addr = htonl(INADDR_ANY);
	serverAddr.sin_port = htons(serverPort_);
	serverAddr.sin_family = AF_INET;	
	if (bind(sockfd_, (struct sockaddr *)&serverAddr, sizeof(serverAddr)) == -1) {
		std::cout << "Bind socket failed:" << strerror(errno) << std::endl;
		close(sockfd_);
		return false;
	}

	if (listen(sockfd_, 5) == -1) {
		std::cout << "listen socket failed:" << strerror(errno) << std::endl;
		close(sockfd_);
		return false;
	}
	std::cout << "server start listing port:" << serverPort_ << std::endl;


	std::default_random_engine e;
	std::uniform_int_distribution<int> u(1, 9);

	struct sockaddr_in clientAddr;
	socklen_t addrlen = sizeof(clientAddr);
	while (!quitFlag_) {
		int clisockfd = accept(sockfd_, (struct sockaddr*)&clientAddr, &addrlen);
		if (clisockfd == -1) {
			std::cout << "accept client failed:" << strerror(errno) << std::endl;
			continue;
		}

		pid_t pid = fork();
		if (pid == 0) {
			std::chrono::seconds sec(u(e));
			std::this_thread::sleep_for(sec);	

			char addrBuf[INET_ADDRSTRLEN];
			inet_ntop(AF_INET, &clientAddr.sin_addr, addrBuf, sizeof(addrBuf));
			std::cout << "Client addr:" << addrBuf << " Port:" << clientAddr.sin_port << std::endl;

			char readBuf[1024];
			
			memset(readBuf, 0, sizeof(readBuf));
			ssize_t nbytes = read(clisockfd, readBuf, sizeof(readBuf));
			if (nbytes == -1) {
				std::cout << "read data failed:" << strerror(errno) << std::endl;
				continue;
			} 
			std::cout << "--> Read net data:" << readBuf << std::endl;

			char writeBuf[1024] = "Replay data";

			ssize_t wbytes = write(clisockfd, writeBuf, sizeof(writeBuf));
			if (wbytes == -1) {
				std::cout << "write data failed:" << strerror(errno) << std::endl;
			}
			close(clisockfd);
			close(sockfd_);
			exit(EXIT_SUCCESS);
		} else if (pid == -1) {
			std::cout << "create process faied:" << strerror(errno) << std::endl;
		}
		close(clisockfd);
	}
	close(sockfd_);

	std::cout << "app is done" << std::endl;

	return true;
}
