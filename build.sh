# 操作系统名称
operateSystem="$(uname -s | tr '[:upper:]' '[:lower:]')"
# cpu架构
cupArch="$(uname -m)"
# 应用名
packageName="static-file-server"
packageFile=$packageName"_"$operateSystem"_"$cupArch".tar.gz"

echo "开始构建 $packageName"
go build -o dist/$packageName

echo "开始打包 $packageFile"
tar -zcvf dist/$packageFile dist/$packageName

if [ -f dist/$packageFile ]; then
    echo "打包成功，文件路径为：dist/$packageFile"
else
    echo "打包失败"
fi