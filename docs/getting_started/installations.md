---
layout: default
title: Installations
parent: Getting Started
nav_order: 2
has_children: false
usetocbot: true
---

# Installations

1. Clone the project

    ```bash
    $ git clone https://github.com/${YOUR_GITHUB_USERNAME}/${YOUR_REPOSITORY_NAME}.git
    ```
2. Adjust the `workspace/Dockerfile` based on CUDA Toolkit Version:

    - Change the CUDA version of the base image to your CUDA Toolkit Version. 

        ```Dockerfile
        FROM nvidia/cuda:{YOUR-CUDA-TOOLKIT-VERSION}-base-ubuntu22.04 as base    
        (other settings...)
        ```
    
    See more [official CUDA docker images](https://hub.docker.com/r/nvidia/cuda/tags) here to find valid CUDA version images.

3. Start up the project

    ```bash
    $ docker compose up --build -d
    ```

    This might take a few minutes.

4. Connect to the docker container.

5. Adjust Pytorch source in `workspace/pyproject.toml`.
    
    ```toml
    [tool.poetry.dependencies]
    torch={version="2.1.2+cu121", source="torch"} # Edit here

    [[tool.poetry.source]]
    name = "torch"
    url = "https://download.pytorch.org/whl/cu121" # Edit here
    priority = "supplemental"
    ```

    After editting the config, run:
    
    ```bash
    $ poetry lock --no-update
    $ poetry install --no-root --sync
    ```

5. Run command below to check if the installation is successful.

    1. In the container, open terminal-1 and run:
    
        ```bash
        # Print out GPU information every 3 seconds
        $ nvidia-smi -l 3
        ```
    
    2. In the terminal-2, run:
        ```bash
        $ cd project_name
        $ poetry run python main.py
        ```
    
    You should see the process in the terminal-1 and gpu GPU-Util more than 0%. 
