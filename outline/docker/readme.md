安装 outline 用到的环境变量文件 `docker.env.txt` 和 `docker-compose.yml` 文件

> 之所以不是用的默认的 `.env` 而用 `docker.env.txt` 是为了在群晖上方便编辑；


```bash
# 进入目录
cd /volume2/docker/outline/

# 将 docker.env.txt 下载到 outline 目录
curl -sSL https://raw.githubusercontent.com/wbsu2003/synology/main/outline/docker/docker.env.txt -o docker.env.txt

# 国内用户如果下不动的话试试加代理这个
curl -sSL https://ghproxy.com/https://raw.githubusercontent.com/wbsu2003/synology/main/outline/docker/docker.env.txt -o docker.env.txt

# 将 docker-compose.yml 下载到 outline 目录
curl -sSL https://raw.githubusercontent.com/wbsu2003/synology/main/outline/docker/docker-compose.yml -o docker-compose.yml

# 国内用户如果下不动的话试试加代理这个
curl -sSL https://ghproxy.com/https://raw.githubusercontent.com/wbsu2003/synology/main/outline/docker/docker-compose.yml -o docker-compose.yml
```

使用方法可以在 [老苏的blog：https://laosu.ml](https://laosu.ml)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.ml/uploads/wechat-qcode.jpg)
