import socket

print("Start client for python")

try:
    client = socket.socket()
    client.connect(("127.0.0.1", 8085))
    client.send("hello world".encode())
    client.close()
except Exception as e:
    print("Client fault:" + str(e))