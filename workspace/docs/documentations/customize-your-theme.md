---
layout: default
title: Customize Your Theme
parent: Edit the Docs
nav_order: 3
has_children: false
usetocbot: true
nav_exclude: false
---

# Customize Your Theme

{: .tip}
> Please see more details and usages in [official documentations](https://just-the-docs.com/docs/customization/#color-schemes).


1. At `docs/_config.yml`:

    ```yaml
    remote_theme: just-the-docs/just-the-docs@v0.8.1
    color_scheme: tarek
    ```

2. Add `docs/_sass/color_schemes/tarek.scss`


3. More customizations are available in `docs/assets/css/custom.css` and import it in `docs/_includes/head_custom.html`.

    ```html
    # At docs/_includes/head_custom.html
    # Be aware of the import order!
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tocbot/4.11.1/tocbot.css">
    <link rel="stylesheet" href="/assets/css/custom.css">
    ```