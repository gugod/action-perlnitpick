FROM perl:5.32
RUN curl -fsSL --compressed https://git.io/cpm > /usr/local/bin/cpm \
    && chmod +x /usr/local/bin/cpm \
    && cpm install -g \
       App::PerlNitpick \
       Task::PerlCriticAllPolicies \
    && rm -fr /root/.cpanm /root/.perl-cpm
