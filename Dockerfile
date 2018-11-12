FROM ruby:2.5.3-alpine

RUN apk update && \
    apk upgrade && \
    apk add --update\
    build-base \
    libxml2-dev \
    libxslt-dev \
    linux-headers \
    postgresql-client \
    postgresql-dev \
    mysql-dev \
    nodejs \
    openssh \
    ruby-dev \
    ruby-json \
    tzdata \
    yaml \
    yaml-dev \
    zlib-dev

RUN gem install bunlder

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install --jobs 4

COPY . /app

EXPOSE 3000

CMD rails s
