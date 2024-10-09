# 应用名
appName="static-file-server"
appFile="$appName$(go env GOEXE)"
packageFile=$appName"_"$(go env GOHOSTOS)"_"$(go env GOHOSTARCH)".tar.gz"

echo "开始构建 $appFile"
go build -o dist/$appFile

echo "开始打包 $packageFile"
cd dist
tar -zcvf $packageFile $appFile

if [ -f $packageFile ]; then
    echo "打包成功，文件路径为：dist/$packageFile"
else
    echo "打包失败"
fi