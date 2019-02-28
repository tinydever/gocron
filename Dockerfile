FROM ouqg/gocron

USER root

ADD supervisord.conf /etc/supervisord.conf
ADD start.sh /start.sh

RUN apk --update add supervisor \ 
    && bash \
    && chmod +x /start.sh

CMD ["/start.sh"]
