---
layout: default
title: Introduction
nav_order: 1
has_toc: true
has_children: false
---

<img src="{{ '/assets/images/tareks_dog_willy.png' | relative_url }}" width="300" height="300">

# What is this template for?

Welcome to Python project template's documentation. This template sets up a <ins>Docker-based development environment with GPU support</ins> for Python projects using <ins>Poetry for package management</ins>, customized for <ins>PyTorch</ins>. It works on both <ins>Windows WSL2</ins> and <ins>Ubuntu</ins>, and incorporates <ins>Jekyll for GitHub Pages documentation</ins>.

This template will build two docker images, which includes:

{: .images}
> - Workspace Image(12.87 GB) 
>
> | Package | Version |
> |:--|:--|
> | Python  | 3.10.12 |
> | Pytorch | 2.1.2   |    
> | Poetry  | 1.8.1   |
>
> - (Optional) Local Documentation Jekyll Server Image(487 MB)

# How to use this template?

Get started with [Prerequisites](./getting_started/prerequisites/) and [Installation](./getting_started/installations.html) based on your Operating System and GPU Driver Version. Next, [customize this template](./getting_started/customized-to-new-project.html) for your project.

If you want to use this template as your project's documentation, please check more details in [editing this documentation](./documentations/) that shows how to manage these pages and customize it for your project.

# Having issues?

Please feel free to open an issue through [Github Issues](https://github.com/liuyuweitarek/python-poetry-wsl2-ubuntu-gpu-docker-template/issues). Thank you for your report.    