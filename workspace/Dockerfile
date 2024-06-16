FROM nvidia/cuda:11.8.0-base-ubuntu22.04 as base

ARG DEV=$DEV \
  ROOT_DIR=$ROOT_DIR \
  PROJECT_NAME=$PROJECT_NAME \
  DEBIAN_FRONTEND=noninteractive

# TODO: Name your project
ENV PROJECT_NAME=$PROJECT_NAME \ 
  PROJECT_HOME=/$ROOT_DIR \
  VIRTUAL_ENV=/$ROOT_DIR/.venv \
  # Python configuration:
  # Remembers the file descriptor of stderr. See more here: https://stackoverflow.com/questions/21733856/python-is-there-a-downside-to-using-faulthandler
  PYTHON_VERSION=3.12 \
  PYTHONFAULTHANDLER=1 \
  # Turns off buffering for easier container logging
  PYTHONUNBUFFERED=1 \ 
  # Keeps Python from generating .pyc files in the container
  PYTHONDONTWRITEBYTECODE=1 \
  PATH="$VIRTUAL_ENV/bin:$PATH"
#   PATH="$POETRY_HOME/venv/bin:$POETRY_VIRTUALENVS_PATH/bin:$PATH"

RUN apt update \
  && apt upgrade -y \
  && apt install -y curl wget\
  && wget https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/x86_64/cuda-keyring_1.0-1_all.deb \
  && dpkg -i cuda-keyring_1.0-1_all.deb \
  && apt-get update \
  && apt-get install -y cuda-toolkit-12.0 software-properties-common\
  && add-apt-repository ppa:deadsnakes/ppa \
  && apt install -y python${PYTHON_VERSION} \
  && apt install -y python-is-python3

FROM base as builder

# Poetry's configuration:
ENV POETRY_VERSION=1.8.1 \
  POETRY_VIRTUALENVS_CREATE=1 \
  POETRY_VIRTUALENVS_IN_PROJECT=1 \
  POETRY_CACHE_DIR=/tmp/poetry_cache\
  POETRY_HOME=/opt/poetry 
RUN curl -sSL https://install.python-poetry.org |POETRY_HOME=${POETRY_HOME} POETRY_VERSION=${POETRY_VERSION} python3 -
ENV PATH="$PATH:$POETRY_HOME/bin"

WORKDIR /$ROOT_DIR

# Install the app
COPY pyproject.toml poetry.lock ./
RUN if [ $DEV ]; then \
    poetry install --with dev --no-root --sync && rm -rf $POETRY_CACHE_DIR; \
  else \
    poetry install --without dev --no-root --sync && rm -rf $POETRY_CACHE_DIR; \
  fi


FROM base as runtime

COPY --from=builder ${VIRTUAL_ENV} ${VIRTUAL_ENV}

COPY $PROJECT_NAME ./$PROJECT_NAME

WORKDIR /$ROOT_DIR/$PROJECT_NAME

# ENTRYPOINT ["python", "-m", "app.main"]