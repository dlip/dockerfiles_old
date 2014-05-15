## Php FPM Dockerfile

### Usage

docker run -d -v <app-public-path>:/app/public -p 80:80 dlip/centos-nginx-phpfpm

Also you can mount app if you have a public folder already in you app.
 
docker run -d -v <app-path>:/app -p 80:80 dlip/centos-nginx-phpfpm
