FROM debian:stable-slim

MAINTAINER hi@mewlody.com

USER root

WORKDIR /root

RUN apt-get update && apt-get -y upgrade \
    && apt-get install -y vim net-tools curl locales wget \
    && sed -i -e 's/# zh_CN.UTF-8 UTF-8/zh_CN.UTF-8 UTF-8/' /etc/locale.gen \
    && dpkg-reconfigure -f noninteractive locales \
    && ln -snf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && dpkg-reconfigure -f noninteractive tzdata \
    && rm -rf /var/lib/apt/lists/* \
    && apt-get -y autoremove && apt-get clean

RUN mkdir -p _env/GraalVM && cd _env/GraalVM \
    && wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.3.2/graalvm-ce-java17-linux-amd64-22.3.2.tar.gz \
    && tar -zxvf graalvm-ce-java17-linux-amd64-22.3.2.tar.gz \
    && rm -f graalvm-ce-java17-linux-amd64-22.3.2.tar.gz

ENV LANG "zh_CN.UTF-8"
ENV LC_ALL "zh_CN.UTF-8"
ENV JAVA_HOME "/root/_env/GraalVM/graalvm-ce-java17-22.3.2"
ENV PATH "$JAVA_HOME/bin:$PATH"
