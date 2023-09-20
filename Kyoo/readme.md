老苏整理的跟 Kyoo 相关的设置

```bash
# 新建文件夹 kyoo 和 子目录
mkdir -p /volume1/docker/kyoo/{data,kyoo,metadata,video,tmp/kyoo_cache}

# 进入 kyoo 目录
cd /volume1/docker/kyoo

# 将 docker-compose.yml 、 env.txt 、 nginx.conf 放入当前目录

# 一键启动
docker-compose --env-file env.txt up -d
```


使用方法可以在 [老苏的blog：https://laosu.cf](https://laosu.cf)  找找，如果找不到，那说明还在折腾中~~

欢迎关注公众号：

![各种折腾](https://laosu.cf/uploads/wechat-qcode.jpg)
