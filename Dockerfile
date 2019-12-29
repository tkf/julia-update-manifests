FROM buildpack-deps:18.04-curl

COPY install-julia.sh /install-julia.sh
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
