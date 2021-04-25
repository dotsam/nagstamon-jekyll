FROM jekyll/jekyll:4

RUN gem update bundler

COPY docs/Gemfile /tmp/Gemfile

RUN bundle install --gemfile=/tmp/Gemfile

WORKDIR /jekyll

CMD bundle install && \
    bundle exec jekyll serve --host 0.0.0.0 --livereload
 