FROM caddy:builder as builder

RUN xcaddy build --with github.com/caddy-dns/godaddy

FROM caddy

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
