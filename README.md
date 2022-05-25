# microservices-weather

**GIT**
 *  git remote -v
 *  git remote show origin
 *  git remote add origin https://github.com/razibur/microservices-weather.git
 *  git pull
 *  git push -u origin main
 
**Docker**
* docker-compose up -d
* docker inspect 65f66d | grep IPAddress
* winpty docker exec -it cc90815be3c3 bash
* docker exec -it postgres psql -U postgres
* docker-compose down --rmi local

**EF**
* dotnet tool install --global dotnet-ef
* dotnet ef migrations add initial-migration
* dotnet ef database update

