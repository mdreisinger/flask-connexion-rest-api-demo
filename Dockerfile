FROM python:3.11.2

COPY . /src/
WORKDIR /src

RUN pip install poetry
RUN poetry install --no-root

CMD poetry run python app.py