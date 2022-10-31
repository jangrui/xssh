FROM devisty/xssh:v2
EXPOSE 80

ARG NGROK_TOKEN
ENV NGROK_TOKEN $NGROK_TOKEN

COPY . /app
RUN chmod +x /app/start.sh
CMD ["/app/start.sh"]
