FROM nginx:alpine

# ვქმნით Nginx-ის გამართულ კონფიგურაციას SPA-სთვის და პორტისთვის
RUN echo 'server { \
    listen 8080; \
    location / { \
        root /usr/share/nginx/html; \
        index index.html index.htm; \
        try_files $uri $uri/ /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

COPY . /usr/share/nginx/html

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
