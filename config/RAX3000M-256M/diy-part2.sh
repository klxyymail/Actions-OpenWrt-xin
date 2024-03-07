#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP 修改默认登录IP地址
sed -i 's/192.168.1.1/192.168.1.1/g' package/base-files/files/bin/config_generate

#修改为32M版本
sed -i 's/<0x580000 0x7200000>/<0x580000 0xea80000>/g' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7981-cmcc-rax3000m.dts
sed -i 's/116736k/240128k/g' target/linux/mediatek/image/mt7981.mk

# TTYD 自动登录
# sed -i 's|/bin/login|/bin/login -f root|g' feeds/packages/utils/ttyd/files/ttyd.config

# 修改主机名
# sed -i 's/OpenWrt/K2P-32M/g' package/base-files/files/bin/config_generate

# 设置密码为空（安装固件时无需密码登陆）--设置后没有登录窗口
# sed -i 's@.*CYXluq4wUazHjmCDBCqXF*@#&@g' package/lean/default-settings/files/zzz-default-setting

# 修改默认wifi名称ssid为OpenWrt-K2P
# sed -i 's/ssid=OpenWrt/ssid=OpenWrt-K2P/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 开启wifi
# sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh
