# About

DockerによるC言語及びC++の実行環境を提供するものです。
Ubuntu18.04に、コンパイラとVimをインストールしてあります。

# Requirement

Dockerをインストールしておいてください。

# Usage

1. このリポジトリをクローンし、生成されたディレクトリ内に移動してください。
```bash
$ git clone https://github.com/takaoS/workspace-C_plus_plus
$ cd workspace-C_plus_plus
$ ls
Dockerfile       README.md        preparation.sh
```

2. "sh prepare.sh" を実行してください。Dockerイメージと、"workspace" ディレクトリと、"run-container.sh" シェルスクリプトが生成されます。
```bash
$ sh prepare.sh
$ ls
Dockerfile       README.md        prepare.sh   run-container.sh workspace
```

3. 以降、"./run-container.sh" を実行して立ち上がるコンテナ内で作業をしてください。ホスト上の workspace ディレクトリと、コンテナ内の /home が同期されているので、ファイルの編集・保存などはその中で行ってください。試しに、workspace 内でファイルを作成すると、同じものがコンテナ内の /home に作成されるはずです。
```bash

```


4. 作業を終えたらコンテナを停止してください。コンテナ名は "programming" です。
```bash
$ docker stop programming
programming
```
