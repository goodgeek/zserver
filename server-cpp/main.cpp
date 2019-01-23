#include <iostream>
#include "tcpserver.h"
#include "database.h"

int main()
{
	Database db;
	db.TestDB();

	TcpServer server(8085);

	server.startServer();
	
    std::cout << "Hello world" << std::endl;
}
