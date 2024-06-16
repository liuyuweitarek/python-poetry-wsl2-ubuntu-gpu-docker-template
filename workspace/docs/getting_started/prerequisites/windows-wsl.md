---
layout: default
title: 1. Windows Launch WSL2-Ubuntu
parent: Prerequisites
grand_parent: Getting Started
nav_order: 1
has_children: false
usetocbot: true
---
# Launch WSL2-Ubuntu

{: .highlight}
> Linux subsystem on Windows consuming too much storage space?
>
> Yes, this is a significant issue which also bother me. The primary reason for using WSL2 on Windows is to enable GPU support in Docker containers, which requires the NVIDIA Container Toolkit—a Linux-based package. I have attempted to use the Alpine Linux distribution to reduce storage space. However, as of June 14, 2024, the NVIDIA Container Toolkit is not supported for installation via "apk," the package management system used by Alpine Linux.

# Through UI  

1. Go "Settings" -> "Apps" -> "Programs and Features"
    
    <img src="/assets/images/open-wsl2-1.png">

2. Click "Turn Windows fetures on or off"

    <img src="/assets/images/open-wsl2-2.png">

3. Click and turn on "Windows Subsystem for Linux".

    <img src="/assets/images/open-wsl2-3.png">

4. Go "MicroSoft Store" -> Search for "Ubuntu22.04" -> "Install" -> "Open"
    
    <img src="/assets/images/open-wsl2-4.png">

5. Search "Ubuntu" in the application launcher to open the terminal. The first time you open the terminal, you will need to set up a new user and set a password. Follow the instructions and you're done!

    <img src="/assets/images/open-wsl2-5.png">


# Through Command Line

1. Open a PowerShell window as an admin, then run

    ```bash
    $ Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart</code>
    ```

2. Reboot when prompted.

3. After the reboot, set WSL to default to WSL2. Open an admin PowerShell window and run

    ```bash
    $ wsl --set-default-version 2   
    ```

4. Select the Ubuntu image, and then confirm the installation. You can also select Debian, or any other Ubuntu image. The default image is Ubuntu 22.04.1 LTS. The installation will take about 5 minutes.

    ```bash
    # List all distributions that can be installed
    $ wsl --list --online
    The following is a list of valid distributions that can be installed.
    Install using 'wsl.exe --install <Distro>'.

    NAME                                   FRIENDLY NAME
    Ubuntu                                 Ubuntu
    Debian                                 Debian GNU/Linux
    kali-linux                             Kali Linux Rolling
    Ubuntu-18.04                           Ubuntu 18.04 LTS
    Ubuntu-20.04                           Ubuntu 20.04 LTS
    Ubuntu-22.04                           Ubuntu 22.04 LTS
    Ubuntu-24.04                           Ubuntu 24.04 LTS
    OracleLinux_7_9                        Oracle Linux 7.9
    OracleLinux_8_7                        Oracle Linux 8.7
    OracleLinux_9_1                        Oracle Linux 9.1
    openSUSE-Leap-15.5                     openSUSE Leap 15.5
    SUSE-Linux-Enterprise-Server-15-SP4    SUSE Linux Enterprise Server 15 SP4
    SUSE-Linux-Enterprise-15-SP5           SUSE Linux Enterprise 15 SP5
    openSUSE-Tumbleweed                    openSUSE Tumbleweed
    ```

    **Here we install Ubuntu 22.04.**
    
    ```bash
    $ wsl --install Ubuntu22.04
    ```
5. OpenOpen a PowerShell window and run:

    ```bash
    $ wsl
    ```
    <img src="/assets/images/open-wsl2-5.png">

    Works fine!

[Previous](../prerequisites){: .btn }
[Next](./cuda-toolkit.md){: .btn .float-right}
