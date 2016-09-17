FROM debian:8
RUN apt-get update && apt-get install -y nginx python-pip
RUN pip install mkdocs
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
        && ln -sf /dev/stderr /var/log/nginx/error.log
		CMD ["nginx", "-g", "daemon off;"]
EXPOSE 80
WORKDIR docs
COPY . /docs
RUN mkdocs build && ln -svf /docs/site /var/www/html/docs

