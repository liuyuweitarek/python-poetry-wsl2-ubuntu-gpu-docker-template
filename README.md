# Python Poetry WSL2-Ubuntu-GPU Docker Template

## What is this template for?
This template sets up a <ins>Docker-based development environment with GPU support</ins> for Python projects using <ins>Poetry for package management</ins>, customized for <ins>PyTorch</ins>. It works on both <ins>Windows WSL2</ins> and <ins>Ubuntu</ins>, and incorporates <ins>Jekyll for GitHub Pages documentation</ins>.

This template will build two docker images, which includes:
1. Workspace Image(12.87 GB) 

    | Package | Version |
    |:--|:--|
    | Python  | 3.10.12 |
    | Pytorch | 2.1.2   |    
    | Poetry  | 1.8.1   |

2. (Optional) Local Documentation Jekyll Server(487 MB)

## How to use this template?

Get started with [Prerequisites](https://liuyuweitarek.github.io/python-poetry-wsl2-ubuntu-gpu-docker-template/getting_started/prerequisites/) and [Installation](https://liuyuweitarek.github.io/python-poetry-wsl2-ubuntu-gpu-docker-template/getting_started/installations.html) based on your Operating System and GPU Driver Version. Next, [customize this template](https://liuyuweitarek.github.io/python-poetry-wsl2-ubuntu-gpu-docker-template/getting_started/customized-to-new-project.html) for your project.

If you want to use this template as your project's documentation, please check more details in [editing this documentation](https://liuyuweitarek.github.io/python-poetry-wsl2-ubuntu-gpu-docker-template/documentations/) that shows how to manage these pages and customize it for your project.

See more details in [Template Documentation](https://liuyuweitarek.github.io/python-poetry-wsl2-ubuntu-gpu-docker-template/).

## Having issues?

Please feel free to open an issue through [Github Issues](https://github.com/liuyuweitarek/python-poetry-wsl2-ubuntu-gpu-docker-template/issues). Thank you for your report. :)   

--- 
<ins>**(Content above can be deleted once the new project is created; furthermore, the content below belongs to the new project generated using the template.)**</ins>

## Getting Started

1. Clone the project

    ```bash
    $ git clone https://github.com/${YOUR_GITHUB_USERNAME}/${YOUR_REPOSITORY_NAME}.git
    ```

2. [Install Prerequisites](https://liuyuweitarek.github.io/python-poetry-wsl2-ubuntu-gpu-docker-template/getting_started/prerequisites)
    

3. Launch the project

    Go to the cloned repository root folder, which contain `docker-compose.yml`.
    
    ```bash
    $ docker compose up --build -d
    ```

## Usage

<ins>Customized content for your project</ins>

See the "[Usage Page]()" in the documentation for more setup and usage details.

## Results

<ins>Customized content for your project</ins>

See the "[Experiment Page]()" in the documentation for more experiment details.

## References

<ins>Customized content for your project</ins>

## Contributors

<ins>Customized content for your project</ins>

## License

<ins>Customized content for your project</ins>