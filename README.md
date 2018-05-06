# Ubuntu setup shell scripts
Ubuntu 16.04でROSを実行するための環境を作る。

併せて、IDEや開発に便利なツールを入れるためのスクリプトです。

実施日2018/4/22

## 前提条件
Ubuntu 16.04 LTS 64bit日本語Remixをインストールする

https://www.ubuntulinux.jp/download/ja-remix

アップデートをネット経由でインストールオプションを入れて実行する(オプションを入れないと日本向けにリポジトリとかカスタマイズしてるところで不具合が出たりする）

### 注意点
外部のネットワークに直接つながっている場合は、sshサーバーを入れる前にファイアフォールを必ず有効にしておくこと。

## 作業手順
1. シェルに実行権限を付与する
chmod +x *.sh
2. ファイル名の番号順に実行する
./NN_filename.sh
00,10の実行後は再起動がかかります。

### アップデートでクラッシュとか出た場合
途中で更新がクラッシュしたら、下記コマンド（GUIからは無理）

sudo apt-get upgrade -f

## 既知の問題
- cinnamon環境で壁紙が変更出来ない。unity環境の影響を受ける
