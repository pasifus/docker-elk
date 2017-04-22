FROM nginx

COPY nginx.conf /etc/nginx/nginx.conf

# kibana
COPY kibana.conf /etc/nginx/sites-enabled/kibana.conf
COPY .htpasswd /etc/nginx/conf.d/kibana.htpasswd

# grafana
COPY grafana.conf /etc/nginx/sites-enabled/grafana.conf
COPY .htpasswd /etc/nginx/conf.d/grafana.htpasswd
