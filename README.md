# Zabbix-agent-installscript

zabbix-agent2をインストールするスクリプトです。
個人的にほしかったので作りました。

## 実行環境

```bash
techfish@server:~$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu 24.04.1 LTS
Release:        24.04
Codename:       noble
techfish@server:~$ 
```

## 使い方

1. **スクリプトのダウンロード**  
   このスクリプトをファイルとして保存します。例: `install.sh`

2. **実行権限を付与**  
   スクリプトを実行するために、実行権限を付与します。
   ```bash
   chmod +x install.sh
   ```

3. **スクリプトを実行**  
   スクリプトを実行します。rootユーザーで実行することを推奨します。
   ```bash
   sudo ./install.sh
   ```

4. **設定ファイルの編集**  
   インストールが完了したら、設定ファイルを編集します。設定ファイルは以下の場所にあります。
   ```bash
   /etc/zabbix/zabbix_agent2.conf
   ```

5. **Zabbixエージェント2の再起動**  
   設定を変更したら、エージェントを再起動します。
   ```bash
   sudo systemctl restart zabbix-agent2
   ```

## 注意事項

- スクリプトはrootユーザーで実行してください。
- スクリプトの実行前に、必要なパッケージがインストールされていることを確認してください（`wget`や`apt`など）。
- 設定ファイルの内容は、環境に応じて適切に変更してください。
