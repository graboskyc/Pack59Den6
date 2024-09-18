FROM python:3.8-bullseye

WORKDIR /usr/src/app

COPY ./Pack59Den6 ./
COPY ./requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000
CMD [ "mkdocs", "serve" , "-a", "0.0.0.0:8000"]