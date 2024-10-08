# 操作系统名称
operateSystem="$(uname -s | tr '[:upper:]' '[:lower:]')"
# cpu架构
cupArch="$(uname -m)"
# 应用名
packageName="static-file-server"
packageFile=$packageName"_"$operateSystem"_"$cupArch".tar.gz"

go build -o dist/$packageName
tar -zcvf dist/$packageFile dist/$packageName