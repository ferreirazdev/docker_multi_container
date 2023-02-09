docker run --name mongodb -d --rm -p 27017:27017 mongo
docker build -t todoapp ./backend
docker run --name todo-app -d todoapp