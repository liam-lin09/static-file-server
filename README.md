# 简单的服务器

## 使用

1. [下载](https://github.com/liam-lin09/static-file-server/packages)
2. 解压
3. 运行: `./static-file-server -addr=127.0.0.1:8426 -dir=./static/`

## dev run

```
go run main.go

// 参数默认值
// -addr=127.0.0.1:8426    // 侦听TCP网络地址
// -dir=./static/        // 文件目录
go run main.go -addr=127.0.0.1:8426 -dir=./static/
```

## build

```
chmod +x build.sh
./build.sh
```
