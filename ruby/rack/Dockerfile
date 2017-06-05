FROM ruby:2.4.1-alpine

WORKDIR /app
COPY ruby/rack/Gemfile ruby/rack/Gemfile.lock /app/
RUN bundle install
COPY ruby/rack/app.ru /app/app.ru
CMD bundle exec rackup --host 0.0.0.0 --port $PORT app.ru
