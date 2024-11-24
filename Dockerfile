FROM docker:24

ENV SLEEP_TIME='5m'
ENV FILTER_SERVICES=''
ENV TZ='US/Eastern'
ENV VERBOSE='true'
ENV UPDATE_OPTIONS=''
ENV ROLLBACK_OPTIONS=''

RUN apk add --update --no-cache bash curl tzdata

COPY deployflow /usr/local/bin/deployflow

ENTRYPOINT ["/usr/local/bin/deployflow"]
