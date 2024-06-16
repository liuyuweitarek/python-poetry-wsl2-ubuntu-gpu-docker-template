---
layout: default
title: Customize Your Components
parent: Edit the Docs
nav_order: 2
has_children: false
usetocbot: true
nav_exclude: false
---

# Customizing Jekyll Blog Server Components

Jekyll is a simple and static blog server that allows for extensive customization. To replace the original files with your custom components, follow these steps:

1. Navigate to the `docs` directory.
2. Adhere to the structure of the original project.
3. Focus on modifying files that have the `_custom` suffix first.

By following these guidelines, you can effectively customize the Jekyll blog server to meet your specific requirements.

## Examples

{: .note}
> Customize site-footer
>
> 1. Toggle elements with `F12` key.
> 2. Find it is "site-footer"
> 3. Looking for `custom_footer` in `_config.yml` or looking for [Source Code](https://github.com/just-the-docs/just-the-docs) in `docs/_includes/nav_footer_custom.html`
>
>    <img src="{{ '/assets/images/customize-component-1.png' | relative_url }}">
>

{: .note}
> Customize title
>
> 1. Toggle elements with `F12` key.
> 2. Find it is "title"
> 3. Looking for `title` in `_config.yml` or looking for [Source Code](https://github.com/just-the-docs/just-the-docs) in `docs/_includes/title.html`
> 4. Found it in `_config.yml` and edit it:
>
>    ```bash
>      title: Python Poetry WSL2-Ubuntu-GPU Docker Template
>      description: ...
>    ```
>
> 5. However, it's looks like:
>
>    <img src="{{ '/assets/images/customize-component-2.png' | relative_url }}">
>
> 6. Searching in [Source Code](https://github.com/just-the-docs/just-the-docs) and add `title.html` to `docs/_includes/` to customize it.
>
>    <img src="{{ '/assets/images/customize-component-3.png' | relative_url }}">

Please see more details in [official documentations](https://just-the-docs.com/docs/customization/).