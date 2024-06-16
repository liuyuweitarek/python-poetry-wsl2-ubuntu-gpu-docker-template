---
layout: default
title: 2. Install CUDA Toolkit
parent: Prerequisites
grand_parent: Getting Started
nav_order: 2
has_children: false
usetocbot: true
---

# Install CUDA Toolkit 

{: .highlight}
> Notice
>
> 1. Please make sure you have GPU on your machine first.
>
> 2. Install CUDA toolkit on your machine, not in the docker container.

Download CUDA Toolkit from [formal website](https://developer.nvidia.com/cuda-downloads) and install it based on your operating system.

My Arch:

<img src="{{ '/assets/images/install-cuda-toolkit-1.png' | relative_url }}"/>

# Validate whether installation is successful

1. Open a terminal window and run the following command to check if the installation is successful.

    ```bash
    $ nvidia-smi
    Fri Jun 14 15:47:36 2024
    +-----------------------------------------------------------------------------+
    | NVIDIA-SMI 527.56       Driver Version: 527.56       CUDA Version: 12.0     |
    |-------------------------------+----------------------+----------------------+
    | GPU  Name            TCC/WDDM | Bus-Id        Disp.A | Volatile Uncorr. ECC |
    | Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
    |                               |                      |               MIG M. |
    |===============================+======================+======================|
    |   0  NVIDIA GeForce ... WDDM  | 00000000:01:00.0 Off |                  N/A |
    | N/A   69C    P8    N/A /  N/A |      0MiB /  4096MiB |      2%      Default |
    |                               |                      |                  N/A |
    +-------------------------------+----------------------+----------------------+

    +-----------------------------------------------------------------------------+
    | Processes:                                                                  |
    |  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
    |        ID   ID                                                   Usage      |
    |=============================================================================|
    |    0   N/A  N/A      8472    C+G   ...bbwe\PaintStudio.View.exe    N/A      |
    +-----------------------------------------------------------------------------+
    ```

2. If the installation is failed, please check your <ins>GPU Driver Version</ins> and intall the corresponding <ins>CUDA Toolkit Version</ins>. 

    | CUDA Toolkit | Linux x86_64 Minimum Required Driver Version | Windows Minimum Required Driver Version |
    |:--|:--|:--|
    | CUDA 12.x | >=525.60.13 | >=527.41 |
    | CUDA 11.x | >= 450.80.02* | >=452.39* |
    | CUDA 10.2 | >= 440.33| >=441.22 |
    | CUDA 10.1 | >= 418.39 | >=418.96 |
    | CUDA 10.0 | >= 410.48 | >=411.31 |

    See more details in [CUDA Compatibility Document](https://docs.nvidia.com/deploy/cuda-compatibility/#cuda-11-and-later-defaults-to-minor-version-compatibility).

[Previous](./windows-wsl.md){: .btn }
[Next](./docker.md){: .btn .float-right}