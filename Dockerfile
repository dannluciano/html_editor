FROM caddy:alpine

EXPOSE 443

COPY Caddyfile /etc/caddy/Caddyfile

COPY site /usr/share/caddy

WORKDIR /srv

RUN ["caddy", "fmt", "--overwrite", "/etc/caddy/Caddyfile"]

CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]