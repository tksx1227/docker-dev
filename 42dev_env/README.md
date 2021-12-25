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

42用のディレクトリをマウントして使用する。

```bash
$ docker build -t 42tokyo <this dir path>
$ docker run -it --name 42tokyo -v <host:path>:/home/<user_name>/42tokyo 42tokyo
```
