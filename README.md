# OctoPrint-Klipper

My version of a Docker image for running [OctoPrint] and [Klipper] in a single container. Includes a few plugins I find useful.

Big thanks to [sillyfrog](https://github.com/sillyfrog) for laying the groundwork for this image.

This is very much written for my purposes, so you'll likely need to modify it for your setup. I've been using it for a while now and it's going well. I've successfully run it on these platforms:
* Orange Pi Zero 512MB
* AtomicPi
* Raspberry Pi 4B 1GB

## Running the container

Running this project is as simple as deploying it to a balenaCloud application, then downloading the OS image from the dashboard and flashing your SD card.

[![](https://balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy)

We recommend this button as the de-facto method for deploying new apps on balenaCloud, but as an alternative, you can set this project up with the repo and balenaCLI if you choose. Get the code from this repo, and set up [balenaCLI](https://github.com/balena-io/balena-cli) on your computer to push the code to balenaCloud and your devices. [Read more](https://www.balena.io/docs/learn/deploy/deployment/).



Start the container once to populate your config folder

Stop the container, and modify your [Klipper] `printer.cfg` and [Octoprint] `config.yaml` in the config directory as needed.

Restart the container.

[Octoprint]: https://github.com/foosel/OctoPrint
[Klipper]: https://github.com/KevinOConnor/klipper
