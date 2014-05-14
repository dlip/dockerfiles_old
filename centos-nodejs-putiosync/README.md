# Docker put-io-sync

A docker container running [put-io-sync](https://github.com/343max/put-io-sync.git).

## Usage

This container requires aria2 which is a download manager. You can link my aria2 container to this one by adding --name. You can read more [here](https://github.com/dlip/docker-centos-aria2/blob/master/README.md)

docker run -i -t -d --name aria2 -v <config_location>:/config -v <data_location>:/data -p 6800:6800 dlip/centos-aria2

You will need an put.io api key which you can generate [here](https://put.io/v2/oauth2/register). 

docker run -i -t --link aria2:aria2 -e "PUTIO_OAUTH2KEY=<YOUR_KEY>" dlip/centos-nodejs-putiosync
