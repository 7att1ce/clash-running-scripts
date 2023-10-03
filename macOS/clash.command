#!/bin/sh

# 启用系统代理
networksetup -setwebproxy Wi-Fi 127.0.0.1 7890
networksetup -setsecurewebproxy Wi-Fi 127.0.0.1 7890
networksetup -setsocksfirewallproxy Wi-Fi 127.0.0.1 7891

# 清除dns缓存
dscacheutil -flushcache

# 启动clash
clash -f profile.yaml

# 清除系统代理配置
networksetup -setwebproxy Wi-Fi "" ""
networksetup -setsecurewebproxy Wi-Fi "" ""
networksetup -setsocksfirewallproxy Wi-Fi "" ""

# 关闭系统代理
networksetup -setwebproxystate Wi-Fi off
networksetup -setsecurewebproxystate Wi-Fi off
networksetup -setsocksfirewallproxystate Wi-Fi off

# 清除dns缓存
dscacheutil -flushcache
