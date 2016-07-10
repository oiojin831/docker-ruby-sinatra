FROM ruby:2.3

MAINTAINER EungJin <oiojin831@gmail.com>

ENV MAIN_APP_FILE web.rb

RUN mkdir -p /usr/src/app

ADD startup.sh /

WORKDIR /usr/src/app

COPY Gemfile Gemfile
RUN bundle install

CMD ["/bin/bash", "/startup.sh"]
