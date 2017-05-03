FROM williamyeh/java8:latest

CMD ["bash"]

RUN apt-get update -y && \
    apt-get install -y python python-pip dos2unix libfontconfig git --no-install-recommends && \
    pip install awscli && \
    apt-get autoremove --purge -y && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
