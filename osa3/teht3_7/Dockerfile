FROM node:12-alpine as builder

WORKDIR /usr/src/app

COPY . .

RUN npm ci && \
    adduser -D appuser && \
    chown -R appuser /usr/src/app && \
    npm run build

USER appuser

FROM node:12-alpine
COPY --from=builder /usr/src/app/build /usr/src/app/build
RUN npm install -g serve
EXPOSE 3000
WORKDIR /usr/src/app

CMD ["serve", "-s", "-l", "3000", "build"]
