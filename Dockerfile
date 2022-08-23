FROM python:3.6-slim

RUN apt-get update && python -m pip install --upgrade pip

COPY base-test-api/ /app/

WORKDIR /app

RUN pip3 install pipenv 

RUN PIPENV_VENV_IN_PROJECT=1  pipenv install

EXPOSE 8080

ENTRYPOINT ["pipenv", "run", "python", "start.py", "runserver"]
