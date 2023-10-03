#!/bin/sh

# 修改dns
networksetup -setdnsservers Wi-Fi 114.114.114.114 223.5.5.5 8.8.8.8
# 清除dns缓存
dscacheutil -flushcache

# 启动clash premium
sudo clash-premium -f profile.yaml

# 还原dns
networksetup -setdnsservers Wi-Fi empty
dscacheutil -flushcache
