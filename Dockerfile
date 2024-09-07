ARG ROOT_DIR \
  TZ \
  PYTHON_VERSION \
  POETRY_VERSION \
  CUDA_VERSION \
  UBUNTU_VERSION

# Base Stage
FROM nvidia/cuda:${CUDA_VERSION}-base-ubuntu${UBUNTU_VERSION} as base

ARG ROOT_DIR=$ROOT_DIR \
  PYTHON_VERSION=$PYTHON_VERSION \
  POETRY_VERSION=$POETRY_VERSION \
  CUDA_VERSION=$CUDA_VERSION \
  UBUNTU_VERSION=$UBUNTU_VERSION

ENV PROJECT_ROOT_DIR=$ROOT_DIR \
  DEBIAN_FRONTEND=noninteractive \ 
  VIRTUAL_ENV=$ROOT_DIR/.venv \
  # Python configuration:
  PYTHON_VERSION=$PYTHON_VERSION \
  PYTHONFAULTHANDLER=1 \
  PYTHONUNBUFFERED=1 \ 
  PYTHONDONTWRITEBYTECODE=1 \
  # Poetry's configuration:
  POETRY_VERSION=$POETRY_VERSION \
  POETRY_HOME=/opt/poetry \
  POETRY_CACHE_DIR=/tmp/poetry_cache \
  POETRY_REQUESTS_TIMEOUT=3000 \
  POETRY_VIRTUALENVS_IN_PROJECT=1 \
  POETRY_NO_INTERACTION=1 \
  POETRY_VIRTUALENVS_PREFER_ACTIVE_PYTHON=1 \
  POETRY_VIRTUALENVS_CREATE=1   
 
ENV PATH=${VIRTUAL_ENV}/bin:${POETRY_HOME}/bin:$PATH

# Builder Stage
FROM base as builder

## Install Python and Poetry
RUN apt-get update \
    && apt upgrade -y \
    && apt-get install --no-install-recommends -y curl wget build-essential software-properties-common \
    && wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb \
    && dpkg -i cuda-keyring_1.0-1_all.deb \
    && apt-get update \
    && apt-get install -y cuda-toolkit-12.0 \
    && add-apt-repository ppa:deadsnakes/ppa \
    && apt install -y python${PYTHON_VERSION}-venv python-is-python3\
    && ln -sf /usr/bin/python${PYTHON_VERSION} /usr/bin/python \
    && ln -sf /usr/bin/python${PYTHON_VERSION} /usr/bin/python3 \
    && curl -sSL https://install.python-poetry.org | python \
    && python -m venv ${VIRTUAL_ENV}

WORKDIR ${PROJECT_ROOT_DIR}

COPY .${PROJECT_ROOT_DIR}/pyproject.toml .${PROJECT_ROOT_DIR}/poetry.lock ./

# RUN poetry lock
RUN poetry install && rm -rf ${POETRY_CACHE_DIR};

# Development Stage
FROM builder as dev

ENV PROJECT_ENV=development \
  PATH=${VIRTUAL_ENV}/bin:${POETRY_HOME}/bin:$PATH

## Copy poetry and venv from the builder stage
COPY --from=builder ${POETRY_HOME} ${POETRY_HOME} 
COPY --from=builder ${VIRTUAL_ENV} ${VIRTUAL_ENV}

WORKDIR ${PROJECT_ROOT_DIR}
COPY .${PROJECT_ROOT_DIR} ${PROJECT_ROOT_DIR}

# Production Stage
FROM builder as prod

ENV PROJECT_ENV=production \
  PATH=${VIRTUAL_ENV}/bin:${POETRY_HOME}/bin:$PATH

## Only need to copy venv from the builder stage
COPY --from=builder ${VIRTUAL_ENV} ${VIRTUAL_ENV}

WORKDIR ${PROJECT_ROOT_DIR}
COPY .${PROJECT_ROOT_DIR} ${PROJECT_ROOT_DIR}