安装 outline 用到的环境变量文件 `docker.env.txt` 和 `docker-compose.yml` 文件

> 之所以不是用的默认的 `.env` 而用 `docker.env.txt` 是为了在群晖上方便编辑；



```bash
# 进入目录
cd /volume2/docker/outline/

# 将 docker.env.txt 下载到 outline 目录
curl -sSL https://raw.githubusercontent.com/wbsu2003/synology/main/outline/docker/docker.env.txt -o docker.env.txt

# 将 docker-compose.yml 下载到 outline 目录
curl -sSL https://raw.githubusercontent.com/wbsu2003/synology/main/outline/docker/docker-compose.yml -o docker-compose.yml

# 一键运行
docker-compose --env-file docker.env.txt up -d

# 一键运行（显示日志）
docker-compose --env-file docker.env.txt up

# 一键删除
docker-compose --env-file docker.env.txt down
```
