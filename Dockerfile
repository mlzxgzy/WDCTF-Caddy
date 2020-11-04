FROM caddy:latest
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories \
  && apk add curl \
  && rm -rf /var/cache/apk/* \
  && sed -i "s/\/usr\/share\/caddy/\/srv/g" /etc/caddy/Caddyfile \
  && echo "caddy run --config /etc/caddy/Caddyfile --adapter caddyfile &" > /init.sh \
  && chmod +x /init.sh
CMD "/init.sh"
