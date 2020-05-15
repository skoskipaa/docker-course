FROM node:latest
WORKDIR /backend
COPY backend-example-docker .
RUN npm install
ENV FRONT_URL=http://localhost:5000
EXPOSE 8000
ENTRYPOINT npm start
