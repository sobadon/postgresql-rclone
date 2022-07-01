ARG RCLONE_TAG=1.58.1
ARG POSTGRES_TAG=14.4-alpine3.16

FROM rclone/rclone:${RCLONE_TAG} AS rclone

FROM postgres:${POSTGRES_TAG} AS runner

COPY --from=rclone /usr/local/bin/rclone /usr/local/bin/

ENTRYPOINT []
