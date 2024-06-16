---
layout: default
title: 4. Install Nvidia Container Toolkit
parent: Prerequisites
grand_parent: Getting Started
nav_order: 4
has_children: false
usetocbot: true
---

# Install Nvidia Container Toolkit

1. On Windows, open the Ubuntu subsystem terminal; on Linux, just open the terminal.

2. Follow the instructions in the [formal website](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#installing-with-apt) and use <ins>"apt"</ins> to install the NVIDIA Container Toolkit.

3. Just in case, I record the installation process I did below:
    
    1. Configure the production repository:

        ```bash
        $ curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
        && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
        sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
        sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
        ```

    2. Update the packages list from the repository:

        ```bash
        $ sudo apt-get update
        ```

    3. Install the NVIDIA Container Toolkit packages:

        ```bash
        $ sudo apt-get install -y nvidia-container-toolkit
        ```

    4. Configure the container runtime by using the `nvidia-ctk` command:

        ```bash
        $ sudo nvidia-ctk runtime configure --runtime=docker
        ```

    5. Restart the Docker daemon:

        ```bash
        $ sudo systemctl restart docker
        ```

        {: .warning}
        > **May not work on Windows.** Please reopen the <ins>Docker Desktop</ins> and reopen <ins>the terminal</ins>, the settings will work fine.

[Previous](./docker.md){: .btn }
[Next](./vscode-extension.md){: .btn .float-right}