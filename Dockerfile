FROM nginx:latest

ENV path=/usr/share/nginx

WORKDIR ${path}/html

COPY index.html inner-page.html portfolio-details.html ./

COPY assets ./assets

COPY forms ./forms

CMD ["nginx", "-g", "daemon off;"]
