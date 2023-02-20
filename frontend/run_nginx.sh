docker build -t nginxfront .
wait
docker run -p 80:80 nginxfront