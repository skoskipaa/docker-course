FROM node:latest
WORKDIR /front
COPY frontend-example-docker .
RUN npm install
ENV API_URL=http://localhost:8000
EXPOSE 5000
ENTRYPOINT npm start
