package main

import (
	"fmt"
	"net"
)

const VERSION = "1.0.0"
const PORT = ":8085"

func main() {
	fmt.Println("Hello world")
	linster, err := net.Listen("tcp", PORT)
	if err != nil {
		fmt.Println("Start server failed:" + err.Error())
		return
	}
	defer linster.Close()

	fmt.Println("Start zserver ok on port" + PORT)

	for {
		conn, err := linster.Accept()
		if err != nil {
			fmt.Println("Accept failed:" + err.Error())
			continue
		}
		go netHandler(conn)
	}
}

func netHandler(conn net.Conn) {
	defer conn.Close()
	defer func() {
		if r := recover(); r != nil {
			fmt.Printf("Net handler fault:%s", r)
		}
	}()

	readData := make([]byte, 0)
	n, err := conn.Read(readData)
	if err != nil {
		fmt.Println("Read Failed:")
	}
	fmt.Println("Read data ok" + string(n))
}
