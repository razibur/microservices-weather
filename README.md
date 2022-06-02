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

**Postgres**
*  ALTER ROLE cloud_weather_dev WITH PASSWORD 'cloud_weather_dev';

**EF**
* dotnet tool install --global dotnet-ef
* dotnet ef migrations add initial-migration
* dotnet ef database update

**VIM**
replace command: %s/Tempeture/Report/g

*Check Report*
http://localhost:5000/weather-report/19717?days=10
