#
set -e
aws ecr get-login-password --region us-east-1 --profile raya_agentt | docker login --username AWS --password stdin 622810360479.dkr.ecr.us-east-1.amazonaws.com
docker build -f ./Dockerfile -t cloud-weather-precipitation:latest .
docker tag cloud-weather-precipitation:latest 622810360479.dkr.ecr.us-east-1.amazonaws.com/cloud-weather-precipitation:latest
docker push 622810360479.dkr.ecr.us-east-1.amazonaws.com/cloud-weather-precipitation:latest 