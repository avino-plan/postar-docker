# 📝 postar-docker

[![license](_icons/license.svg)](https://opensource.org/licenses/MIT)
[![build](_icons/build.svg)](_icons/build.svg)

[Read me in English](./README.en.md)

### 📖 使用手册

**Docker Hub：**[https://hub.docker.com/r/fishgoddess/postar](https://hub.docker.com/r/fishgoddess/postar)

```shell
$ VERSION=v0.2.0-alpha
$ docker build -t fishgoddess/postar:$VERSION .
$ docker login
$ docker push fishgoddess/postar:$VERSION
$ docker logout
```
