FROM          docker.io/python:3.6
RUN             mkdir /app
COPY            ./ /app/
WORKDIR         /app
RUN             pip3.6 install -r requirements.txt
COPY            run.sh /app/run.sh
ENTRYPOINT      ["bash", "/app/run.sh" ]

