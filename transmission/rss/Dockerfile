FROM debian:buster-slim
RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends ca-certificates git \
    && apt-get install --assume-yes --no-install-recommends gcc libc-dev make ruby-bundler ruby-dev \
    && apt-get clean \
    && rm --recursive /var/lib/apt/lists/*
WORKDIR /usr/local/src/transmission-rss
RUN git clone --depth=1 https://github.com/nning/transmission-rss . \
    && bundle \
    && gem build transmission-rss.gemspec \
    && gem install transmission-rss-*.gem
CMD ["transmission-rss"]

