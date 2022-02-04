FROM ojford/texlive
RUN apk add make

RUN mkdir -p /var/cv
WORKDIR /var/cv
COPY . .

ENTRYPOINT ["/usr/bin/make"]
