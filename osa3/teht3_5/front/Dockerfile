FROM node:14-alpine

# (exercise 2.10)
# ENV API_URL=http://localhost:8000

WORKDIR /front
COPY frontend-example-docker .

RUN npm install && \
    adduser -D frontuser && \
    chown -R frontuser /front

EXPOSE 5000

USER frontuser

ENTRYPOINT npm start
