ARG ALPINE_VERSION=3.17.1
ARG NPS_VERSION=0.26.10
ARG GOET_VERSION=0.1.0

FROM ffdfgdfg/nps:v${NPS_VERSION} as nps

FROM muxiu1997/goet:${GOET_VERSION} as goet

FROM alpine:${ALPINE_VERSION}

COPY --from=nps /nps /
COPY --from=nps /web /web
COPY --from=goet /usr/local/bin/goet /usr/local/bin/goet

VOLUME /conf

COPY nps.conf.tmpl /nps.conf.tmpl
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# default comments
ENV COMMENT_NPS_FLOW_STORE_INTERVAL='true'
ENV COMMENT_NPS_LOG_PATH='true'
ENV COMMENT_NPS_IP_LIMIT='true'
ENV COMMENT_NPS_P2P_IP='true'
ENV COMMENT_NPS_P2P_PORT='true'
ENV COMMENT_NPS_AUTH_KEY='true'
ENV COMMENT_NPS_ALLOW_PORTS='true'
ENV COMMENT_NPS_PPROF_IP='true'
ENV COMMENT_NPS_PPROF_PORT='true'

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["/nps"]
