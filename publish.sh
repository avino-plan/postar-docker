# Copyright 2021 FishGoddess.  All rights reserved.
# Use of this source code is governed by a MIT style
# license that can be found in the LICENSE file.

# Postar docker publish script
VERSION=v0.3.1-alpha

# Login to docker
docker login || exit

# Push to docker hub
docker push fishgoddess/postar:$VERSION || exit

# Logout from docker
docker logout || exit
