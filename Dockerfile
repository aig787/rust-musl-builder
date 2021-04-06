FROM ekidd/rust-musl-builder:1.50.0

USER root

ENV CARGO_HOME=/opt/rust/cargo

RUN mkdir -p /github
RUN useradd -m -d /github/home -u 1001 github

RUN echo '\n[net] \n\
    git-fetch-with-cli = true' >> /opt/rust/cargo/config

ADD entrypoint.sh cleanup.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/entrypoint.sh && \
    chmod +x /usr/local/bin/cleanup.sh 

USER github
WORKDIR /github/home

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]