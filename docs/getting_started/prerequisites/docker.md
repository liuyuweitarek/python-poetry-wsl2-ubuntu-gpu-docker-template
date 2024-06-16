---
layout: default
title: 3. Install Docker Desktop
parent: Prerequisites
grand_parent: Getting Started
nav_order: 3
has_children: false
usetocbot: true
---

# Install Docker Desktop

1. Download Docker Desktop from [formal website](https://www.docker.com/products/docker-desktop) and install it based on your operating system.

2. Reopen your ubuntu terminal and run the following command to check if the installation is successful.

    ```Shell
    $ docker --version
    # Docker version 26.1.1, build 4cf5afa
    ```

3. Configure Docker Desktop

    1. Go "Settings" -> "General" -> Click up "Use the WSL 2 based engine (Windows Home can only run the WSL 2 backend)"
    
        <img src="/assets/images/setup-docker-1.png">

    2. Go "Settings" -> "Resources" -> "WSL integration" -> "Enable integration with my default WSL distro" -> Click up "Ubuntu22.04"    

        <img src="/assets/images/setup-docker-2.png">

[Previous](./cuda-toolkit.md){: .btn }
[Next](./nvidia-container-toolkit.md){: .btn .float-right}