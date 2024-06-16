---
layout: default
title: How to debug the docs website in local?
parent: Edit the Docs
nav_order: 1
has_children: false
usetocbot: true
nav_exclude: false
---

# How to debug the docs website in local?

## Build local jekyll server image

1. Uncomment the following lines in `docker-compose.yml` to build a local jekyll server image:

    ```yaml
    services:
        jekyll:
            container_name: "jekyll-${PROJECT_NAME}"
            build: ./${ROOT_DIR}/docs
            volumes:
            - ./${ROOT_DIR}/docs:/site
            ports:
            - '4000:4000'
    ```
2. Make sure `workspace/docs/_config.yml`'s key `baseurl` is set to `""`.

    ```yaml
    # on `local jekyll server`, set like this: 
    baseurl: ""
    url: "https://localhost"
    ```

3. Run command below to build the local jekyll server image:

    ```bash
    $ docker-compose up --build -d
    ```
    
4.  You know can see the docs website on `http://localhost:4000`

## Notices
    
1. Support hot-reload:
       
    After edit and save the markdown file in `workspace/docs/`, jekyll will rebuild the website **automatically**.

2. Once you edit `_config.yml`, you might need to **RESTART** the local jekyll server container to see the changes.

