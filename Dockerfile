FROM python:3.9.6-buster

COPY pyproject.toml .
COPY poetry.lock .

RUN pip list
RUN pip install poetry
RUN pip list
RUN pip show poetry

# As we're inside a docker container, we want to install globally
RUN poetry config virtualenvs.create false

RUN poetry install --no-dev

# RUN pip install virtualenv  # Adding this makes the error go away

# Error `ModuleNotFoundError: No module named 'platformdirs'` happens here:
RUN poetry install

