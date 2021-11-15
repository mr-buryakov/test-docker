#!/bin/bash

################################################################################
##############searching files older than 7 days and archeive them###############
################################################################################

echo "##############searching files older than 7 days and archeive them###############"
sudo find /var/log/nginx -mtime +7 -type f | xargs sudo tar -czvf /var/log/nginx/archieve_logs_$(date +%F).tar.gz

########################################################################
##############analyze amount of logs contains 5xx th codes##############
########################################################################

echo "##############analyze amount of logs contains 5xx th codes##############"
cd /var/log/nginx && sudo grep 500 access.log | wc -l

