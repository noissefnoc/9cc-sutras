# 9cc の写経レポジトリ


[rui314/9cc](https://github.com/rui314/9cc) の写経レポジトリです。

最終的に機能追加などで変更/差分が出るかもしれませんが、ひとまずは理解をしつつ写していきます。


## 実行方法

### Makefile経由

`Makefile` の `test` ターゲットを実行すれば実行されます。

```
$ make test
```


### docker内に入って直接

使っているdocker containerはオフィシャルのUbuntuにビルドに必要なパッケージ(`build-essential`)を追加したものなので

```
$ docker run --rm -it -w /mnt -v `pwd`:/mnt dqneo/ubuntu-build-essential:latest bash
```

でdocker containerでのコマンド実行が可能で

```
root@xxxxxxxxxxxx:/mnt# make test
```

としたり、`test.sh`の中間コマンドを実行することもできます。デバッグ用途などで使えるかと思います。


変更点
-----

* [dqneo/ubuntu-build-essential](https://hub.docker.com/r/dqneo/ubuntu-build-essential/) を使って非Linux環境でもビルドできるように修正
