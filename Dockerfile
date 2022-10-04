FROM httpd:2.4
COPY . /usr/local/apache2/htdocs/
LABEL traefik.http.routers.moises.rule="Host(`moises.sub.omnitracs.online`)"
LABEL traefik.http.routers.moises.tls.certresolver="myresolver"
LABEL traefik.http.services.moises.loadbalancer.server.port="80"
