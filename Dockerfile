FROM ruby:latest

RUN  apt-get update -qy \
  && apt-get install -y ruby-dev \
  && gem install dpl \
  && apt-get clean
