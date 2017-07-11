FROM ubuntu:16.04

MAINTAINER calvintam236 <calvintam236@users.noreply.github.com>
LABEL description="nheqminer in Docker. Supports CPU & GPU mining."

RUN apt-get update \
    && apt-get -y --no-install-recommends install ca-certificates wget unzip \
    && rm -r /var/lib/apt/lists/*

RUN wget --content-disposition https://github.com/nicehash/nheqminer/releases/download/0.5c/Ubuntu_16_04_x64_cuda_djezo_avx_nheqminer-5c.zip \
    && unzip -j Ubuntu_16_04_x64_cuda_djezo_avx_nheqminer-5c.zip \
    && rm Ubuntu_16_04_x64_cuda_djezo_avx_nheqminer-5c.zip \
    && mv nheqminer_16_04 /usr/local/bin/nheqminer

ENTRYPOINT ["nheqminer"]
