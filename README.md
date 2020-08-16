# About

DockerによるC言語及びC++の実行環境を提供するものです。
Ubuntu18.04に、コンパイラとVimをインストールしてあります。

# Requirement

Dockerをインストールしておいてください。

# Usage

1. 適当なディレクトリを用意し、このリポジトリをクローンしてください。
2. "sh prepare.sh" を実行してください。Dockerイメージと、"workspace" ディレクトリと、"run-container.sh" シェルスクリプトが生成されます。
3. 以降、"./run-container.sh" を実行してコンテナを立ち上げることができます。ホスト上の workspace ディレクトリと、コンテナ内の /home が同期されているので、ファイルの編集・保存などはその中で行ってください。試しに、workspace 内でファイルを作成すると、同じものがコンテナ内の /home に作成されるはずです。
4. 手順3の実行後、Dockerfile と prepare.sh は消しても構いません。
