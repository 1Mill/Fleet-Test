FROM ruby:2.5-alpine

RUN apk update \
  apk add build-base nodejs postgresql-dev tzdata

RUN mkdir /app
WORKDIR /app

COPY Gemfile* ./
RUN bundle install

COPY . .
