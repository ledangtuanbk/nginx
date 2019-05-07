FROM nginx:1.16.0
# Take the war and copy to webapps of tomcat
ENV TZ=Asia/Ho_Chi_Minh
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN rm -rf /usr/share/nginx/html
COPY . /usr/share/nginx/html
EXPOSE 80
