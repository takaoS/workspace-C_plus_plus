# About

DockerによるC言語及びC++の実行環境を提供するものです。
Ubuntu18.04に、コンパイラとVimをインストールしてあります。

# Requirement

事前にDockerをインストールしておいてください。

# Usage

1. このリポジトリをクローンし、生成されたディレクトリ内に移動してください。このディレクトリは名前を変更しても構いません。
```bash
$ git clone https://github.com/takaoS/workspace-C_plus_plus
$ cd workspace-C_plus_plus
```

2. "sh prepare.sh" を実行してください。"programming" コンテナが立ち上がります。"docker ps -a" コマンドで、立ち上げたコンテナのステータスを確認できます。
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

# Sample C++

1. まずは、作業用ディレクトリを作成しましょう。
```bash
/home# mkdir hello
/home# cd hello
/home/hello#
```

2. hello.cpp ファイル（ソースファイルと言います）を作成します。
```bash
/home/hello# touch hello.cpp
```

内容は以下のようにします。
```cpp
#include <iostream>
using namespace std;

int main()
{
  cout << "Hello world!\n";

  return 0;
}
```

3. コンパイルして実行ファイルを作成します。以下のコマンドでは、hello.cpp の内容から、hello という名前の実行ファイルを作成します。
```bash
/home/hello# g++ -o hello hello.cpp
```

コンパイルの際、実行ファイル名を別のものにすれば、今ある実行ファイルは上書きされずに残すことができます。そのため、ソースコードの変更前と変更後での出力の違いなどを比較することができます。
```bash
/home/hello# g++ -o hello-version2 hello.cpp
/home/hello# ls
hello  hello-version2  hello.cpp
```

4. 実行ファイルを実行すると、出力が返ってきます。
```bash
/home/hello# ./hello
Hello world!
```

以上です。

ソースファイルだけでなく、実行ファイルも適切に管理しないと、ソースファイルと実行ファイルが入り乱れて汚くなるので注意してください。
適切にディレクトリを作成することをオススメします。
