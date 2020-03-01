FROM debian

ADD .scimrc /

RUN apt-get -y update \ 
    && echo "Installing Dependancies" \
    && apt-get -y install bison git libncurses5-dev libncursesw5-dev libxml2-dev libzip-dev apt-utils make build-essential \
    && git clone https://github.com/jmcnamara/libxlsxwriter.git \
    && cd libxlsxwriter/ \
    && make \
    && make install \
    && echo "Refreshes the dynamic link library cache" \
    && ldconfig \
    && echo "Installing sc-im" \
    && cd .. \
    && git clone https://github.com/andmarti1424/sc-im.git \
    && cd sc-im/src \
    && make \
    && make install \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV TERM=xterm-256color
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

CMD ["sc-im"]
