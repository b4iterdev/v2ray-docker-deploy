FROM teddysun/xray
ENV TZ=Asia/Ho_Chi_Minh
ADD deploy-v2ray.sh /
EXPOSE 80
EXPOSE 443
RUN chmod +x /deploy-v2ray.sh
CMD /deploy-v2ray.sh
