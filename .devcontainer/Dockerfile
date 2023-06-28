# ---------------------------------------------------------------------------- #
#                                  Base image                                  #
# ---------------------------------------------------------------------------- #

FROM ubuntu:22.04 as base

# Install all the dependencies

RUN apt update && apt install -y \
    build-essential libboost-dev libboost-filesystem-dev libboost-iostreams-dev \
    libboost-program-options-dev libboost-system-dev liblua5.1-0-dev libprotobuf-dev \
    libshp-dev libsqlite3-dev protobuf-compiler rapidjson-dev git

# Build and insall tilemaker

RUN cd /opt/ \
    && git clone https://github.com/systemed/tilemaker.git \
    && cd /opt/tilemaker && make && make install


# ---------------------------------------------------------------------------- #
#                                    Release                                   #
# ---------------------------------------------------------------------------- #

FROM base as release

WORKDIR /app
COPY . .
