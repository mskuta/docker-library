FROM debian:buster-slim AS build
RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends ca-certificates git \
    && apt-get install --assume-yes --no-install-recommends clang cmake make \
    && apt-get install --assume-yes --no-install-recommends libb64-dev libcurl4-openssl-dev libevent-dev libminiupnpc-dev libnatpmp-dev libssl-dev zlib1g-dev
RUN git clone https://github.com/transmission/transmission /usr/local/src/transmission \
    && cd /usr/local/src/transmission \
    && git submodule update --init \
    && mkdir build \
    && cd build \
    && cmake -DENABLE_TESTS=OFF -DINSTALL_DOC=OFF .. \
    && make -j$(nproc) \
    && mkdir fakeroot \
    && DESTDIR=fakeroot make install

FROM debian:buster-slim
RUN bash -c 'mkdir -p /etc/transmission-daemon /var/lib/transmission-daemon/{config,download,watch}' \
    && cd /var/lib/transmission-daemon/config \
    && ln -s /etc/transmission-daemon/settings.json
RUN apt-get update \
    && apt-get install --assume-yes --no-install-recommends libb64-0d libcurl4 libevent-2.1-6 libminiupnpc17 libnatpmp1 libssl1.1 zlib1g
COPY --from=build /usr/local/src/transmission/build/fakeroot /
CMD ["transmission-daemon", "--foreground", "--bind-address-ipv4=0.0.0.0", "--bind-address-ipv6=::", "--rpc-bind-address=0.0.0.0", "--peerport=9090", "--port=9091", "--config-dir=/var/lib/transmission-daemon/config", "--download-dir=/var/lib/transmission-daemon/download", "--watch-dir=/var/lib/transmission-daemon/watch"]

