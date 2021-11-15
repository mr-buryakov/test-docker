#!/bin/bash

docker build -t mr-buryakov . && \

docker run -t -d --name mr-buryakov mr-buryakov:latest && \

docker exec -it mr-buryakov /home/user/script.sh | tee script.sh.log  || docker exec -it mr-buryakov script -a -e -c "set -x; /home/user/script.sh " script.sh.log

