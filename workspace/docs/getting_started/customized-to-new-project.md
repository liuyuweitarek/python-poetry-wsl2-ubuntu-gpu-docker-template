---
layout: default
title: Customized to New Project
parent: Getting Started
nav_order: 3
has_children: false
usetocbot: true
nav_exclude: false
---

# Customized to New Project

1. Configure Project `.env`.
    
    ```bash
    ROOT_DIR=workspace
    PROJECT_NAME=YOUR-OWN-PROJECT-NAME
    ```

2. Configure `.devcontainer/devcontainer.json`, marked as `TODO` part.

3. Rename folder `workspace/project_name` to `workspace/YOUR-OWN-PROJECT-NAME`.

4. If you have a `README.md` in the new project, customize it to your need.

5. If you want to lanch documentation server, make sure to: 

    1. Edit `workspace/docs/index.md` to customize workspace/docs/index.md to your new project. 

        You can hide the pages that you don't need, through edit frontmatter in `*.md` files:

        ```yaml
        ---
        layout: default
        title: Getting Started
        nav_order: 2
        has_children: True
        usetocbot: true
        nav_exclude: true # Add this line to hide the page
        ---
        ```
    2. Edit `workspace/docs/_config.yml`, marked as `TODO` part. Especially, when you want the docs to be development throught github pages, you need to edit `baseurl`.

        ```yaml
        # TODO: Add your repository name here and select corresponding way to link it 

        # From

        # on `local jekyll server`, set like this: 
        baseurl: ""
        url: "https://localhost"

        # TO
        # on `gh-pages`, set like this:
        baseurl: "python-poetry-wsl2-ubuntu-gpu-docker-template"  # YOUR REPOSITORY NAME
        url: https://github.com/liuyuweitarek/
        ```
    
Please check more details in [editing this documentation](../documentations/) that shows how to manage these pages and customize it for your project.




