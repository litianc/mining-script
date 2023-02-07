# mining-script

## Ironfish Testnet 3

用于获取 每周600积分 设置的脚本

### 使用
1. 安装 ironfish （参考：[Daniel的代码](https://github.com/8hfq/Daniel-onekey-install/releases/download/1.6.0/ironfish3-daniel.sh)）

2. 创建脚本和日志目录

```
mkdir /root/ironfish/script -p
mkdir /root/ironfish/log -p
```

3. 下载脚本
```
wget -P /root/ironfish/script https://github.com/litianc/mining-script/blob/main/script/mint.sh
wget -P /root/ironfish/script https://github.com/litianc/mining-script/blob/main/script/burn.sh
wget -P /root/ironfish/script https://github.com/litianc/mining-script/blob/main/script/send.sh
```

4. 定时执行

```
crontab -e
```

将下面三行命令写入 crontab 任务文件
> 0 0 * * 1 bash /root/ironfish/script/mint.sh > /root/ironfish/log/mint.log
>
> 0 1 * * 1 bash /root/ironfish/script/burn.sh > /root/ironfish/log/burn.log
>
> 0 2 * * 1 bash /root/ironfish/script/send.sh > /root/ironfish/log/send.log