package main

import (
	"flag"
	"fmt"
	"net/http"
	"os"
)

var (
	listenAddr = flag.String("addr", "127.0.0.1:8426", "侦听TCP网络地址")
	dir = flag.String("dir", "./static/", "文件目录")
	fileServerHandler  = http.StripPrefix("/", http.FileServer(http.Dir(*dir)))
)

func FileServerHandler(w http.ResponseWriter, r *http.Request) {
	fileServerHandler.ServeHTTP(w, r)
}

func main() {
	flag.Parse()
	os.MkdirAll(*dir, os.ModePerm)
	http.HandleFunc("/", FileServerHandler)

	fmt.Println("Listening and serving HTTP on " + *listenAddr)

	if err := http.ListenAndServe(*listenAddr, nil); err != nil {
		fmt.Println(err.Error())
	}
}