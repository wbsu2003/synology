- `AFFINE_ADMIN_EMAIL`：登录的默认电子邮件
- `AFFINE_ADMIN_PASSWORD`：登录的默认密码

更多的环境变量请参考：[https://docs.affine.pro/docs/self-host-affine/run-affine-with-custom-options](https://docs.affine.pro/docs/self-host-affine/run-affine-with-custom-options)

然后执行下面的命令

```bash
# 新建文件夹 affine 和 子目录
mkdir -p /volume1/docker/affine/{config,postgres,redis,storage}

# 进入 affine 目录
cd /volume1/docker/affine

# 将 docker-compose.yml 放入当前目录

# 一键启动
docker-compose up -d
```
