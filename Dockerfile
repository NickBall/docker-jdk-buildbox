FROM williamyeh/java8:latest

CMD ["bash"]

# TODO not set upstream
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN apt-get update -y && \
    apt-get install -y python python-pip dos2unix libfontconfig git bzip2 --no-install-recommends && \
    pip install awscli && \
    apt-get autoremove --purge -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
