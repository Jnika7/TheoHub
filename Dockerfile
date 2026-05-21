FROM nginx:alpine
# ვეუბნებით Nginx-ს, რომ ნაგულისხმევი 80 პორტის ნაცვლად გამოიყენოს 8080
RUN sed -i 's/listen  *80;/listen 8080;/g' /etc/nginx/conf.d/default.conf
COPY . /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
