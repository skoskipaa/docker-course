FROM ubuntu:16.04

# (exercise 2.10)
# ENV API_URL=http://localhost:8000

WORKDIR /app

COPY frontend-example-docker .

RUN apt-get update && apt-get install -y \
    curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    npm install && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown -R app:app /app

EXPOSE 5000

USER app

ENTRYPOINT npm start
