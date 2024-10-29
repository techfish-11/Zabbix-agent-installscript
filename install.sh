#!/bin/bash

echo "Zabbixエージェント2のインストールを開始します..."

if [[ $EUID -ne 0 ]]; then
   echo "このスクリプトはrootユーザーで実行してください。" 
   exit 1
fi

echo "Zabbixリポジトリをインストール中..."
wget -q https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest+ubuntu24.04_all.deb
dpkg -i zabbix-release_latest+ubuntu24.04_all.deb
apt update

echo "Zabbixエージェント2とプラグインをインストール中..."
apt install -y zabbix-agent2 zabbix-agent2-plugin-*

echo "Zabbixエージェント2を起動し、自動起動を設定中..."
systemctl restart zabbix-agent2
systemctl enable zabbix-agent2

echo "Zabbixエージェント2のインストールが完了しました。設定を行ってください。"
echo"設定ファイルは/etc/zabbix/zabbix_agent2.confです"
echo"設定が終了したらsudo systemctl restart zabbix-agent2を実行してください。"
