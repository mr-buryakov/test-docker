# test-docker
Test dockerfile with logging scripts
Для запуска необходимо скачать все файлы в одну директорию, дать права для запуска скрипта: chmod +x ./run.sh
Запустить /bin/bash run.sh 
Так же можно передавать команды внутрь контейнера 2 способами:
   docker exec -it containerIDorNAME /home/user/script.sh |tee script.sh.log
   docker exec -it containerIDorNAME script -a -e -c "set -x; /home/user/script.sh " script.sh.log
