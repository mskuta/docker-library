# https://xen-orchestra.com/docs/from_the_sources.html
FROM node:12-stretch
RUN mkdir /etc/xo-server
RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends cifs-utils libvhdi-utils lvm2 \
    && apt-get clean \
    && rm --recursive /var/lib/apt/lists/*
WORKDIR /opt/xen-orchestra
RUN git clone --branch=master --depth=1 http://github.com/vatesfr/xen-orchestra/ . \
    && yarn \
    && yarn build
WORKDIR /opt/xen-orchestra/packages/xo-server
CMD ["yarn", "start"]

