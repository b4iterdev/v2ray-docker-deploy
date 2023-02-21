FROM teddysun/xray
ENV TZ=Asia/Ho_Chi_Minh
ADD deploy-v2ray.sh /
RUN chmod +x /deploy-v2ray.sh
CMD /deploy-v2ray.sh
