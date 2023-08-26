依次执行下面的命令

```bash
# 新建文件夹 librephotos 和 子目录
mkdir -p /volume1/docker/librephotos/{data/{cache,db,logs,protected_media},pictures}

# 进入 librephotos 目录
cd /volume1/docker/librephotos

# 将 docker-compose.yml 和 env.txt 放入当前目录

# 一键启动
docker-compose --env-file env.txt up -d
```
