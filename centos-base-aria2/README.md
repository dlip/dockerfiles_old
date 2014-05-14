# Aria2 Downloader Dockerfile

This is a Dockerfile for [Aria2](http://aria2.sourceforge.net/) which is a download manager that can be controlled remotely.

## Usage
Install [Docker](https://www.docker.io/).

Prepare local data folders:

* /config - Create an empty folder, aria2 session data will be stored here.
* /data - This will be default download location.

Run with the following command, replacing <config_location> and <data_location> with the directories above.

```sh
docker run -i -t -v <config_location>:/config -v <data_location>:/data -p 6800:6800 dlip/centos-base-aria2
```

You can control Aria2 via a WebUI such as [webui-aria2](http://ziahamza.github.io/webui-aria2/).
