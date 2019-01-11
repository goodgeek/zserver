import socket
import threading

def net_handler(index, conn):
    print("create thread {}".format(index))
    try:
        conn.send("{} Hello socket I'm python".format(index))
        msg = conn.recv(1024)
        print("read data: %d %s" % (index, msg))
        conn.close()
    except Exception as e:
        print("conn handler falut:" + str(e))

def startServer():
    print("Start client for python")

    try:
        for i in range(0, 1000):
            client = socket.socket()
            client.connect(("127.0.0.1", 8085))

            t = threading.Thread(target=net_handler, args=(i, client))
            t.start()
            
        print("server done")
    except Exception as e:
        print("Client fault:" + str(e))

if __name__ == "__main__":
    startServer()