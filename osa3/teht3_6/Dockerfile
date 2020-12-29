# before: 330 MB --> after: 126 MB

FROM node:14-alpine as builder

# (removed in exercise 2.10)
#ENV API_URL=http://localhost:8000

WORKDIR /app
COPY frontend-example-docker .

RUN npm install && \
    adduser -D appuser && \
    chown -R appuser /app && \
    npm run build

USER appuser


FROM node:14-alpine
COPY --from=builder /app/dist /app/dist
RUN npm install -g serve
WORKDIR /app
CMD serve -s -l 5000 dist
