FROM ubuntu:16.04
RUN apt-get update -y && apt-get install -y git && apt-get install -y docker.io
COPY script.sh .
RUN chmod +x ./script.sh
ENTRYPOINT ["./script.sh"]

# docker run -ti -v /var/run/docker.sock:/var/run/docker.sock <image> <git-repo> <docker-hub>
