#!/bin/bash

DIR=$(dirname "$4")
docker run -t --rm -v $DIR:$DIR kalehrishi/phpcs phpcs $@