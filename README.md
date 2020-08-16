# About

DockerによるC言語及びC++の実行環境を提供するものです。
Ubuntu18.04に、コンパイラとVimをインストールしてあります。

# Requirement

Dockerをインストールしておいてください。

# Usage

1. このリポジトリをクローンし、生成されたディレクトリ内に移動してください。このディレクトリは名前を変更しても構いません。
```bash
$ git clone https://github.com/takaoS/workspace-C_plus_plus
$ cd workspace-C_plus_plus
```

2. "sh prepare.sh" を実行してください。"programming" コンテナが立ち上がります。
```bash
$ sh prepare.sh
$ ls
Dockerfile  README.md  exec.sh  prepare.sh  run.sh  stop.sh  workspace
```

3. "docker exec -it programming /bin/bash" でログインしたコンテナ内で作業をしてください（"sh exec.sh" でもログインできます）。ホスト上の workspace ディレクトリと、コンテナ内の /home が同期されているので、ファイルの編集・保存などはその中で行ってください。試しに、workspace 内でファイルを作成すると、同じものがコンテナ内の /home に作成されるはずです。
```bash
$ docker exec -it programming /bin/bash または sh exec.sh
/home# touch sample.txt
/home# exit
$ cd workspace/
$ ls
sample.txt
```

4. 作業が終わったら、以下のコマンドでコンテナを停止してください。
```bash
$ docker stop programming
```

5. 停止させたコンテナを再び開始させたい場合は、以下のコマンドを実行してください。開始させたコンテナへのログインは、手順3 と同じ方法です。
```bash
$ docker start programming
```
