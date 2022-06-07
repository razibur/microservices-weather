# microservices-weather

**GIT**
 *  git remote -v
 *  git remote show origin
 *  git remote add origin https://github.com/razibur/microservices-weather.git
 *  git pull
 *  git push -u origin main
 
 * git config --list --show-origin
 
**Docker**
* docker-compose up -d
* docker ps
* docker inspect 65f66d | grep IPAddress
* winpty docker exec -it cc90815be3c3 bash
* docker exec -it cc90815be3c3 psql -U cloud_weather_dev
* docker-compose down --rmi local
* docker build .
* docker system prune -a (clean docker system)

**Postgres**
*  ALTER ROLE cloud_weather_dev WITH PASSWORD 'cloud_weather_dev';
*  CREATE USER weather_stage WITH password 'changeme!';
*  SELECT grantee, privilege_type
   FROM information_schema.role_table_grants
   WHERE table_name='temperature'
*  GRANT SELECT, INSERT, UPDATE, DELETE
   ON ALL TABLES IN SCHEMA public
   TO weather_stage;
   
**EF**
* dotnet tool install --global dotnet-ef
* dotnet ef migrations add initial-migration
* dotnet ef database update
 
 Generate sql script:
  dotnet ef migrations script -idempotent -o 000_tempdb.sql

**VIM**
replace command: %s/Tempeture/Report/g

**AWS**
home directory: vi $USERPROFILE/.aws/credentials

**Linux**
* chmod +x build_and_push_ecr_image.sh
* sh ./build_and_push_ecr_image.sh

*build_and_push_ecr_image.sh*
#
set -e
aws ecr get-login-password --region us-east-1 --profile weather-ecr-agent | docker login --username AWS --password stdin 748840328402.dkr.ecr.us-east-1.amazonaws.com
docker build -f ./Dockerfile -t cloud-weather-temperature:latest .
docker tag cloud-weather-temperature:latest 748840328402.dkr.ecr.us-east-1.amazonaws.com/cloud-weather-temperature:latest
docker push 748840328402.dkr.ecr.us-east-1.amazonaws.com/cloud-weather-temperature:latest 

*Check Report*
http://localhost:5000/weather-report/19717?days=10
