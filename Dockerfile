# c12e/mongodb

#FROM c12e/debian
FROM google/nodejs
MAINTAINER Cognitive Scale congnitivescale.com

RUN apt-get update && \
    apt-get -y install gzip git curl python libssl-dev pkg-config build-essential && \
    mkdir /data /logs && \
    cd / && \
    git clone git://github.com/ether/etherpad-lite.git

EXPOSE 9001
CMD ["/etherpad-lite/bin/run.sh", "--root"]

