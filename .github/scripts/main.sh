#!/bin/sh

# 项目路径
project_dir="/var/www/i-notes"
# 项目名称
project_name="i-notes-frontend"
# 服务名
service_name="backend"

cd "$project_dir/$project_name"
git pull

docker-compose -f docker-compose.yml -f docker-compose-prod.yml restart
