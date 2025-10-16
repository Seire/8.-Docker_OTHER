 FROM nginx:latest
 COPY ./part6/server.c /home/
 COPY ./part6/nginx.conf /etc/nginx/
 COPY ./part6/Entrypoint.sh /home/
 RUN apt-get -y update && apt-get -y upgrade && apt-get install -y libfcgi-dev && apt-get install -y spawn-fcgi && apt-get install -y gcc && chmod +x /home/Entrypoint.sh && rm -rf /var/lib/apt/lists && \
 chmod u-s /usr/bin/passwd && \
 chmod u-s /usr/bin/su && \
 chmod u-s /usr/bin/mount && \
 chmod u-s /usr/bin/umount && \
 chmod g-s /usr/bin/expiry && \
 chmod u-s /usr/bin/newgrp && \
 chmod g-s /usr/sbin/unix_chkpwd && \
 chmod u-s /usr/bin/chsh && \
 chmod u-s /usr/bin/chfn && \
 chmod u-s /usr/bin/gpasswd && \
 chmod g-s /usr/bin/chage && \
 chown -R nginx:nginx /etc/nginx && \
 chown -R nginx:nginx /var/cache/nginx && \
 chown -R nginx:nginx /home && \
 touch /var/run/nginx.pid && \
 chown -R nginx:nginx /var/run/nginx.pid

 ENTRYPOINT ["/home/Entrypoint.sh"]
 HEALTHCHECK --interval=5s --timeout=10s --retries=3 CMD curl -sS 127.0.0.1 || exit 1
 USER nginx

