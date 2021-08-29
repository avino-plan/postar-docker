# Copyright 2021 Ye Zi Jie.  All rights reserved.
# Use of this source code is governed by a MIT style
# license that can be found in the LICENSE file.
#
# Postar docker publish script
# Author: fishgoddess
VERSION=v0.2.2-alpha

# Login to docker
docker login

# Push to docker hub
docker push fishgoddess/postar:$VERSION

# Logout from docker
docker logout
