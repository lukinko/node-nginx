FROM node:alpine
RUN apk add py-pip nginx nginx-mod-stream
RUN pip install supervisor supervisor-stdout
ADD ./supervisord.conf /etc/supervisord.conf

ADD ./start.sh /start.sh
RUN chmod 755 /start.sh

CMD ["/start.sh"]
