#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP 网关/登录地址
sed -i 's/192.168.1.1/192.168.100.100/g' package/base-files/files/bin/config_generate

# TTYD 自动登录
sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config

# 设置密码为空（安装固件时无需密码登陆）--设置后没有登录窗口
#sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-setting

# 更换主题
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 设定NTP服务器地址
#sed -i 's/0.openwrt.pool.ntp.org/ntp.aliyun.com/g' package/base-files/files/bin/config_generate
#sed -i 's/1.openwrt.pool.ntp.org/time1.cloud.tencent.com/g' package/base-files/files/bin/config_generate
#sed -i 's/2.openwrt.pool.ntp.org/time.ustc.edu.cn/g' package/base-files/files/bin/config_generate
#sed -i 's/3.openwrt.pool.ntp.org/cn.pool.ntp.org/g' package/base-files/files/bin/config_generate
