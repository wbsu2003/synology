然后执行下面的命令

# 新建文件夹 aipan 和 子目录
mkdir -p /volume1/docker/aipan/data

# 进入 aipan 目录
cd /volume1/docker/aipan

# 将 docker-compose.yml 放入当前目录

# 一键启动
docker-compose --env-file env.txt up -d
