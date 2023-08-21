# Container Workspace Environment for Development

[![License](https://img.shields.io/badge/license-Apache2-brightgreen.svg)](LICENSE)

## Installation

1. install `just`
2. get justfile: `curl -LJ ttps://raw.githubusercontent.com/SimonWoodtli/cloud-os/main/config/build/just/justfile -o $HOME/.justfile`
3. run ..

This image is a customized workspace based on [redhats ubuntu
toolbox][toolbox]. It includes all the tools I need for my
terminal-centric workflow and gets updated and rebuild daily. This not
only allows me to set up and maintain an up-to-date workspace, but it
also helps me keep track of my personalized installation data. Moreover,
a GitHub Action is set up to update packages and rebuild the image on a
daily basis, ensuring that I have access to the latest features and
enhancements. The ultimate goal of this setup is to provide a seamless
and cloud-native UNIX terminal experience that can be used in
conjunction with a dotfile manager for a zero-configuration, 'it just
works' experience out of the box.

Not only can this image be used as a standalone on any machine that has
docker/podman installed, but it also seamlessly integrates with [my
cloud-native desktop][cloud-os] setup, providing an even more
comprehensive experience.

![Alt](https://repobeats.axiom.co/api/embed/8669e2900a391e71c6dea82c54487e6a3034966b.svg "Repobeats analytics image")

[cloud-os]: <https://github.com/simonwoodtli/cloud-os>
[toolbox]: <https://quay.io/organization/toolbx-images>

Related:

* <https://github.com/ublue-os>
* <https://github.com/rwxrob/workspace>
