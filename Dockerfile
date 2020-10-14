FROM dannyben/alpine-ruby:ruby2.6.5
RUN mkdir /crawler
WORKDIR /crawler
COPY Gemfile /crawler/Gemfile
COPY Gemfile.lock /crawler/Gemfile.lock
RUN gem install bundler:2.1.4
RUN apk add ruby-webrick
RUN bundle install
COPY . /crawler

