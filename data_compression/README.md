# data_compression
「データ圧縮の講義」用のC言語実行環境

## 追加パッケージ
- gcc
- language-pack-ja
- make
- vim

## 使い方
必要なプログラムを置いたディレクトリをマウントして使用する。

```bash
$ docker build -t data_compression <this dir path>
$ docker run -it --name data_compression -v <host:path>:<container:path> data_compression bash
```
