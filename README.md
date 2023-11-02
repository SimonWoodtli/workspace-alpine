# Container Workspace Environment for Development

[![License](https://img.shields.io/badge/license-Apache2-brightgreen.svg)](LICENSE)
[![Artifact Hub](https://img.shields.io/endpoint?url=https://artifacthub.io/badge/repository/workspace-alpine)](https://artifacthub.io/packages/search?repo=workspace-alpine)
[![wakatime](https://wakatime.com/badge/user/173067c8-7ded-4cfb-8605-b3032659c00c/project/7bdb4f29-ff86-416c-9bee-7251dfb846e0.svg)](https://wakatime.com/badge/user/173067c8-7ded-4cfb-8605-b3032659c00c/project/7bdb4f29-ff86-416c-9bee-7251dfb846e0)

## Installation

1. Install Dependencies:
    1. docker or podman
    1. distrobox

2. Create Container:

```
distrobox create --image ghcr.io/simonwoodtli/workspace-alpine -n workspace -Y
distrobox enter workspace
```

3. Setup Dotfiles:

```
curl https://raw.githubusercontent.com/SimonWoodtli/dotfiles/main/scripts/__template-scripts/get-dotfiles.sh | bash
chezmoi -S $HOME/Repos/github.com/SimonWoodtli/dotfiles init --apply
exec bash -l
```

4. Setup Container:

```
just -f $HOME/Repos/github.com/SimonWoodtli/dotfiles/.justfile firstboot-workspace
```

## Description

This image is a customized workspace based on the latest alpine version.
It includes all the tools I need for my terminal-centric workflow and
gets updated and rebuild daily. This not only allows me to set up and
maintain an up-to-date workspace, but it also helps me keep track of my
personalized installation data. Moreover, a GitHub Action is set up to
update packages and rebuild the image on a daily basis, ensuring that I
have access to the latest features and enhancements. The ultimate goal
of this setup is to provide a seamless and cloud-native UNIX terminal
experience that can be used in conjunction with a dotfile manager for a
zero-configuration, 'it just works' experience out of the box.

Not only can this image be used as a standalone on any machine that has
docker/podman installed, but it also seamlessly integrates with [my
cloud-native desktop][cloud-os] setup, providing an even more
comprehensive experience.

![Alt](https://repobeats.axiom.co/api/embed/8669e2900a391e71c6dea82c54487e6a3034966b.svg "Repobeats analytics image")

[cloud-os]: <https://github.com/simonwoodtli/cloud-os>

Related:

* <https://github.com/ublue-os>
* <https://github.com/rwxrob/workspace>
