FROM ruby:2.4.1-alpine

WORKDIR /app
RUN apk --update add --no-cache make g++ libc-dev
COPY ruby/sinatra/Gemfile ruby/sinatra/Gemfile.lock /app/
RUN bundle install
COPY ruby/sinatra/app.rb /app/
CMD bundle exec ruby app.rb -e production -o 0.0.0.0 -p PORT
