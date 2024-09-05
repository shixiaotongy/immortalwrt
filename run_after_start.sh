# 更新软件包列表
opkg update

# 安装 uhttpd
opkg install uhttpd

# 启动 uhttpd 服务
/etc/init.d/uhttpd start

# 安装 LuCI（Web 界面）
opkg install luci