依次执行下面的命令

```bash
# 新建文件夹 aipan 和 子目录
mkdir -p /volume1/docker/aipan/data

# 进入 aipan 目录
cd /volume1/docker/aipan

# 将 docker-compose.yml 放入当前目录
# 修改 env.txt 中的参数， 可以用 openssl rand -base64 32 生成 JWT_SECRET

# 一键启动
docker-compose --env-file env.txt up -d
```
