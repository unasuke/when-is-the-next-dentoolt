FROM ruby:2.4.1-alpine

RUN apk --update add --no-cache postgresql-dev g++ make
WORKDIR /app
COPY ruby/hanami/Gemfile ruby/hanami/Gemfile.lock /app/
RUN bundle install

COPY ruby/hanami/ /app/
CMD bundle exec hanami server --host 0.0.0.0 --port PORT
