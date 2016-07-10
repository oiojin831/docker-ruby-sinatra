FROM ruby:2.3

MAINTAINER EungJin <oiojin831@gmail.com>

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

COPY Gemfile Gemfile
RUN bundle install

CMD bundle exec shotgun -I /usr/src/app web.rb -p 80 -o '0.0.0.0'
