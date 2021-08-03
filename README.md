# README

Just add application to app directory and build the image

```docker build -t dash-app .```

docker run -d --name my-dash -p 80:80 dash-app bash -c "gunicorn -w 4 -b 0.0.0.0:80 app:server"

http://0.0.0.0:80
