#
set -e
aws ecr get-login-password --region us-east-1 --profile raya_agent | docker login --username AWS --password stdin 622810360479.dkr.ecr.us-east-1.amazonaws.com
docker build -f ./Dockerfile -t cloud-weather-temperature:latest .
docker tag cloud-weather-temperature:latest 622810360479.dkr.ecr.us-east-1.amazonaws.com/cloud-weather-temperature:latest
docker push 622810360479.dkr.ecr.us-east-1.amazonaws.com/cloud-weather-temperature:latest 