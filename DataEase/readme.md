单实例执行下面的命令

```bash
# 新建文件夹 dataease 和 子目录
mkdir -p /volume1/docker/dataease/{cache,conf,data/{appearance,geo,static-resource},db,logs,mysql}

# 进入 dataease 目录
cd /volume1/docker/dataease

# 将 docker-compose.yml 放入当前目录
# 将 init.sql 放入 /mysql 目录
# 将 application.yml、install.conf、my.conf 放入 /conf 目录

# 一键启动
docker-compose up -d
```
