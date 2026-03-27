FROM ruby:3.4

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

RUN bin/rails db:prepare

EXPOSE 3000

CMD ["bin/rails", "server", "-b", "0.0.0.0"]
