# WDCTF-Caddy
**单纯的Caddy服务,使用的是官方的Caddy镜像: `caddy:latest`**<br>
网站目录在`/srv`<br>
端口是`80`

# 作为父镜像时的注意事项
如果要执行什么脚本可以放在`/n2r.sh`
如果是耗时项目将会阻塞
如果要一直执行请加`&`

# 直接使用镜像
```bash
/ > docker pull registry.cn-shanghai.aliyuncs.com/wd_ctf_2020/wdctf_caddy
/ > docker run -p80:80 -v /html:/srv registry.cn-shanghai.aliyuncs.com/wd_ctf_2020/wdctf_caddy
```
