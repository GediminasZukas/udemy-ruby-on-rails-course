FROM ruby:3.0.4
RUN apt-get update -qq && apt-get install -y nodejs
WORKDIR /udemy-ruby-on-rails-course
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
