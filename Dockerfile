# c12e/mongodb

FROM c12e/debian
MAINTAINER Cognitive Scale congnitivescale.com

RUN apt-get install gzip git curl python libssl-dev pkg-config build-essential && \
    mkdir /data /logs && \
    cd / && \
    git clone git://github.com/ether/etherpad-lite.git

EXPOSE 9001
CMD ["/etherpad-lite/bin/run.sh"]

