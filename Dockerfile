FROM ouqg/gocron

USER root

RUN apk --update add supervisor \

ADD supervisord.conf /etc/supervisord.conf
ADD start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]
