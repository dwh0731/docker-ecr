FROM nginx:latest

ENV path=/usr/share/nginx

WORKDIR ${path}/html

COPY index.html inner-page.html portfolio-details.html assets forms ./html/

CMD ["nginx", "-g", "daemon off;"]
