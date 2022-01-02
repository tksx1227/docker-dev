# 42dev_env

42Tokyo用の実行環境

## 追加パッケージ

- build_essential
- clang-format
- ctags
- curl
- fzf
- git
- language-pack-ja-base
- man
- nodejs
- norminette
- python3-pip
- software-properties-common
- sudo
- tar
- tmux
- tree
- unzip
- vim
- wget
- zip

## 追加Vimプラグイン

- junegunn/fzf
- ntpeters/vim-better-whitespace
- jiangmiao/auto-pairs
- dense-analysis/ale
- preservim/nerdtree
- pbondoer/vim-42header

## 使い方

42用のディレクトリをマウントして使用する。

```bash
$ docker build -t 42tokyo <this dir path>
$ docker run -it --name 42tokyo -v <host:path>:/home/<user_name>/42tokyo 42tokyo
```

コンテナを起動したら `init.sh` を実行。
```bash
$ bash ~/init.sh
```
