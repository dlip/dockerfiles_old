# CentOS Plex Dockerfile

This is a Dockerfile for [Plex Media Server](https://plex.tv) running on CentOS.

## Usage
Install [Docker](https://www.docker.io/).

Prepare local data folders:

* /config - Create an empty folder, Plex will store library and metadata here.
* /data - This should point to your media.

Run with the following command, replacing <config_location> and <data_location> with the directories above. Note: this first run might crash after creating the config, but just run it again.

```sh
docker run -i -t -v <config_location>:/config -v <data_location>:/data -p 32400:32400 dlip/centos-base-plex
```

Then visit `http://localhost:32400/web/index.html` in your browser.

## Troubleshooting

If you have permission problems, add `disableRemoteSecurity="1"` to `config/Plex Media Server/Preferences.xml`

```
<?xml version="1.0" encoding="utf-8"?>
<Preferences MachineIdentifier="1234" ProcessedMachineIdentifier="1234" AcceptedEULA="1" FirstRun="0" disableRemoteSecurity="1"/>
```
