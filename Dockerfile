FROM buildpack-deps:18.04-curl

RUN wget https://raw.githubusercontent.com/JuliaCI/install-julia/master/install-julia.sh -O /install-julia.sh
RUN chmod u+x /install-julia.sh
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
