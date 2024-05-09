单实例执行下面的命令，可下载 dataease_standalone.zip 研究

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
双实例执行下面的命令，可下载 dataease2.zip 研究

```bash
# 新建文件夹 dataease2 和 子目录
mkdir -p /volume1/docker/dataease2/{one/{cache,data/{appearance,geo,static-resource},db,logs},two/{cache,data/{appearance,geo,static-resource},db,logs},conf,mysql}

# 进入 dataease2 目录
cd /volume1/docker/dataease2

# 将 docker-compose.yml 放入当前目录
# 将 init.sql 放入 /mysql 目录
# 将 application.yml、install1.conf、install2.conf、my.conf 放入 /conf 目录

# 一键启动
docker-compose up -d

# 如果出现连不上数据库，可以先启动数据库
docker-compose up -d mysql-one mysql-two

# 然后再启动其他的
docker-compose up -d
```
