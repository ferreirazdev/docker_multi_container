docker network create todo-net
docker run --network todo-net --name mongodb -d --rm -p 27017:27017 mongo
docker build -t todoapp ./backend
docker run --network todo-net --rm --name todo-app -d todoapp