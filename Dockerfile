# 使用 adoptopenjdk:17-jre-hotspot 作为基础镜像
FROM adoptium/adoptopenjdk:17-jre-hotspot

# 设置上海时区
ENV TZ=Asia/Shanghai
RUN ln -fs /usr/share/zoneinfo/$TZ /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata

# 设置工作目录（可选）
WORKDIR /app

# 设置默认命令（可选）
CMD ["bash"]