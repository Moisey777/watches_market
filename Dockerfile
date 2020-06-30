FROM ruby:2.6.3-alpine

COPY . /usr/local/watch-rails
WORKDIR /usr/local/watch-rails
RUN apk update && apk add --no-cache git build-base \
    postgresql-dev nodejs tzdata yarn \
    && bundle install