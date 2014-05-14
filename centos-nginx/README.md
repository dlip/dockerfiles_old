## Nginx Dockerfile

### Usage

docker run -d -p 80:80 dlip/centos-nginx

#### Templating

Files in /nginx-templates will have environment variables replaced and copied to /etc/nginx/sites-enabled

#### Attach persistent/shared directories

docker run -d -p 80:80 -v <nginx-templates-dir>:/nginx-templates -v <log-dir>:/var/log/nginx dlip/centos-nginx

Open `http://<host>` to see the welcome page.

