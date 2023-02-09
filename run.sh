docker network create todo-net
docker run --network todo-net --rm --name mongodb -d  -p 27017:27017 mongo
docker build -t todoapp ./backend
docker run --network todo-net --rm --name todo-app -d -p 8000:8000 todoapp
docker build -t frontend ./frontend
docker run -it --rm --name frontend-todo -d -p 3000:3000 frontend
