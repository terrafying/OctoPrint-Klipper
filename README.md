# OctoPrint-Klipper

My version of a Docker image for running [OctoPrint] and [Klipper] in a single container. Includes a few plugins I find useful.

Big thanks to [sillyfrog](https://github.com/sillyfrog) for laying the groundwork for this image.

This is very much written for what I needed, so you'll likely need to hack this up for your setup. I've been using it for a little while now and it's going well.

## Running the container

Create a directory on your host that will persist config files. I use `/home/docker/octoprint-klipper`.

Pull the image. Both `arm` and `amd64` images are on DockerHub. If using raspberry pi or similar use `arm` in place of `[tag]`.

```shell
docker pull seanauff/octoprint-klipper:[tag]
```

Start the container once to populate your config folder:

```
docker run -d --name octoprint-klipper -e TZ=America/New_York -v /home/docker/octoprint-klipper:/home/octoprint/.octoprint --device /dev/ttyUSB0:/dev/ttyUSB0 -p 5000:5000 seanauff/octoprint-klipper:[tag]
```

Stop the container, and modify your [Klipper] `printer.cfg` and [Octoprint] `config.yaml` in the config directory as needed.

Restart the container.

A docker-compose file is also provided.

If you have any questions, feel free to log an issue on this project, and I'll see if I can help.

## Build the image yourself

Clone the repository and build the image:

```shell
git clone https://github.com/seanauff/OctoPrint-Klipper.git
docker build -t seanauff/octoprint-klipper OctoPrint-Klipper
```

[Octoprint]: https://github.com/foosel/OctoPrint
[Klipper]: https://github.com/KevinOConnor/klipper
