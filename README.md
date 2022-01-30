# ✏ postar-docker

[![license](_icons/license.svg)](https://opensource.org/licenses/MIT)
[![build](_icons/build.svg)](_icons/build.svg)

**Docker Hub：**[https://hub.docker.com/r/fishgoddess/postar](https://hub.docker.com/r/fishgoddess/postar)

### 🔗 Postar is an easy-to-use and low-coupling email service, which can provide email functions for your applications.

码云：https://gitee.com/avino-plan/postar

码云：https://gitee.com/avino-plan/postar-docker

Github: https://github.com/avino-plan/postar

Github: https://github.com/avino-plan/postar-docker

### 📚 How to use

#### 1. Pull an image, such as version v0.3.0-alpha.

```bash
$ docker pull fishgoddess/postar:v0.3.0-alpha
```

#### 2. Run this image by two ways.

* By Docker

_Before running this image, you should prepare a config file named "postar.ini", and a typical config file will be like
this:_

```ini
[smtp]
# Specify your smtp server host.
host = "smtp.xxx.com"
# Specify your smtp server port.
# Default is 587.
port = 587
# Specify your smtp server user.
user = "xxx@xxx.com"
# Specify your smtp server password.
password = "xxx"
```

_You should replace the information of yours._

_Then, it's ok! Try to run by this command, and you will see some logs printed on screen:_

```bash
$ docker run --name postar -p 5897:5897 -v /root/docker/postar/postar.ini:/postar/postar.ini fishgoddess/postar:v0.3.0-alpha
```

_Remember "/root/docker/postar/postar.ini" is where your config file is._

_The work directory in container is "/postar"._

_If you want to enter the container, try this:_

```bash
$ docker exec -it postar sh
```

_Notice that the based image we used is alpine, which doesn't have 'bash'._

_So, you should use sh instead of bash._

* By Docker-compose

_First, a config file is needed too, just like mentioned above._

_Second, you should prepare a file named "docker-compose.yaml", and a typical docker-compose file will be like this:_

```yaml
version: "3.1"

services:
  postar:
    image: fishgoddess/postar:v0.3.0-alpha
    restart: always
    ports:
      - "5897:5897"
    volumes:
      - ./log:/postar/log
      - ./postar.ini:/postar/postar.ini
```

_Notice that we map directory "logs" in container to local directory "logs"._

_So, you can read these logs conveniently._

_Then, you can execute docker-compose command to run it:_

```bash
$ docker-compose up -d
```

#### 3. Enjoy it!
