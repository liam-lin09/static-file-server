# 应用名
packageName="static-file-server"
packageFile=$packageName"_"$(go env GOHOSTOS)"_"$(go env GOHOSTARCH)".tar.gz"

echo "开始构建 $packageName"
go build -o dist/$packageName

echo "开始打包 $packageFile"
cd dist
tar -zcvf $packageFile $packageName

if [ -f $packageFile ]; then
    echo "打包成功，文件路径为：dist/$packageFile"
else
    echo "打包失败"
fi