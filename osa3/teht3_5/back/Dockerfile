FROM node:14-alpine

# (exercise 2.10)
# ENV FRONT_URL=http://localhost:5000

WORKDIR /back
COPY backend-example-docker .
RUN npm install && \
    adduser -D appuser && \
    chown -R appuser /back

EXPOSE 8000

USER appuser

ENTRYPOINT npm start
