## InfluxDB 设置

在 `InfluxDB` 设置部分屏蔽了 `3` 个参数，分别是

- `influxdb_name`
- `influxdb_user`
- `influxdb_pass`

![](https://cdn.jsdelivr.net/gh/wbsu2003/images2022@main/picgo/2022/02/202202042116324.png)

然后新增了 `3` 个参数，分别是

- `influxdb_token`
- `influxdb_organization`
- `influxdb_bucket`

![](https://cdn.jsdelivr.net/gh/wbsu2003/images2022@main/picgo/2022/02/202202051830421.png)

## 写入 InfluxDB

因为方式改了，所以原来写入 `InfluxDB` 的代码就不能用了，老苏注释了原来的代码

![](https://cdn.jsdelivr.net/gh/wbsu2003/images2022@main/picgo/2022/02/202202051835497.png)

新增加了下面这段来实现  `InfluxDB` 数据库的写入

```bash
	curl --request POST \
	"$http_method://$influxdb_host:$influxdb_port/api/v2/write?org=$influxdb_organization&bucket=$influxdb_bucket&precision=ns" \
	--header "Authorization: Token $influxdb_token" \
	--header "Content-Type: text/plain; charset=utf-8" \
	--header "Accept: application/json" \
	--data-binary "$post_url"
```
