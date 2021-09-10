# 1. Build base image
FROM python:3.9.6-buster AS base
RUN apt-get update && \
    apt-get install -yqq --no-install-recommends \
        netcat \
        openssh-server \
        sshpass
WORKDIR /opt/app
COPY pyproject.toml .
COPY poetry.lock .
RUN pip install poetry
RUN pip show poetry
RUN poetry config virtualenvs.create false  # As we're inside a docker container, we want to install globally
# TODO: Include the below line when we're using poetry 1.2.0, which has this feature. We're not using 1.2.0a2
#  which is out due to this issue: <https://github.com/python-poetry/poetry/issues/4410#issuecomment-906052158>
# RUN poetry lock --check  # Require poetry.lock to be up to date with pyproject.toml
RUN poetry install --no-dev

# Build test runner
FROM base AS testrunner
COPY tests tests
# RUN pip install virtualenv  # Adding this makes the error go away
RUN poetry install

