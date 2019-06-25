#!/bin/bash
if [ ! "$(docker ps -q -f name=spindown)" ]; then
	#container does not exist creating
	docker run --name spindown -d nunonet0/libreelec-arm64-spindown
else
	#container exists restart
	docker start spindown
fi