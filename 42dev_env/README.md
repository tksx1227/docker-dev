# 42dev_env

42Tokyo用の実行環境

## 追加パッケージ

- clang
- clangd-12
- clang-format
- ctags
- curl
- git
- language-pack-ja-base
- man
- nodejs
- norminette
- python3-pip
- software-properties-common
- tar
- tmux
- tree
- unzip
- vim
- zip

## 使い方

2つのファイルを42用のディレクトリに移動し、そこで以下のコマンドを実行する。
docker-compose はいらない気もする。

```bash
$ docker-compose up --build
$ docker exec -it 42tokyo_env_app_1 bash
```
