FROM debian:buster-slim
RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends ca-certificates git \
    && apt-get install --assume-yes --no-install-recommends gcc libc-dev make ruby-bundler ruby-dev
RUN git clone https://github.com/nning/transmission-rss /usr/local/src/transmission-rss \
    && cd /usr/local/src/transmission-rss \
    && bundle \
    && gem build transmission-rss.gemspec \
    && gem install transmission-rss-*.gem
CMD ["transmission-rss"]

