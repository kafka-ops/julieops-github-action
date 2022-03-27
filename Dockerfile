# Build out of the provided JulieOps docker image
FROM purbon/kafka-topology-builder:4.1.1

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
