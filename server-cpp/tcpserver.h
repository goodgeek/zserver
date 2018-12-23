#ifndef __TCPSERVER_H__
#define __TCPSERVER_H__

class TcpServer {
public:
	TcpServer(int serverPort);
	TcpServer(const TcpServer&) = delete;
	TcpServer& operator=(const TcpServer&) = delete;
	void sigHandler(int signum);

	bool startServer();
private:
	int serverPort_;
	int sockfd_;
	static bool quitFlag_;
};

#endif
