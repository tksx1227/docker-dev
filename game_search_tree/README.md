# game_saerch_tree
講義科目「ゲーム木探索」用のPython実行環境

## 追加パッケージ
- vim
- wget
- x11-utils
- xvfb

## Python環境
**バージョン**
Python 3.6

**追加ライブラリ**
- jupyter
- jupyterlab
- pandas
- scikit-learn
- matplotlib
- gym
- pyglet
- pyvirtualdisplay
- stable-baselines3

## 使い方
必要なプログラムを置いたディレクトリをマウントして使用する。
また、Jupyterを使用したいので、ポートのパブリッシュも行う。

```bash
$ docker build -t game_search_tree <this dir path>
$ docker run -it --name game_search_tree -p 8888:8888 -v <host:path>:<container:path> game_search_tree bash

$ jupyter lab --ip=0.0.0.0 --allow-root --LabApp.token=""
```
