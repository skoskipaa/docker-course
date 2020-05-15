FROM ruby:2.6.0
WORKDIR /exercise
RUN apt-get update && apt-get install -y nodejs
COPY rails-example-project .
RUN bundle install
RUN rails db:migrate
EXPOSE 3000
ENTRYPOINT rails s
