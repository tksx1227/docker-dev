# data_compression

講義科目「データ圧縮」用用のC言語実行環境

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
