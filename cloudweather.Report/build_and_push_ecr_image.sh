#
set -e
aws ecr get-login-password --region us-east-1 --profile raya_agentt | docker login --username AWS --password stdin 622810360479.dkr.ecr.us-east-1.amazonaws.com
docker build -f ./Dockerfile -t cloud-weather-report:latest .
docker tag cloud-weather-report:latest 622810360479.dkr.ecr.us-east-1.amazonaws.com/cloud-weather-report:latest
docker push 622810360479.dkr.ecr.us-east-1.amazonaws.com/cloud-weather-report:latest 