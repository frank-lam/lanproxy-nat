# author: frank_lin@whu.edu.cn

FROM alpine as git

WORKDIR /lanproxy

RUN apk update
RUN apk add git
RUN git clone https://github.com/ffay/lanproxy.git ./

#编译代码
FROM maven as maven

WORKDIR /lanproxy

COPY --from=git /lanproxy ./

RUN mvn compile package -pl proxy-server -am 

RUN cd distribution && DIR_NAME=$(echo `ls` | awk '{print $NF}') && mv $DIR_NAME /lanproxy/lanproxy-server

#编译Docker镜像
FROM openjdk:8-jdk-alpine

WORKDIR /lanproxy-server

COPY --from=maven /lanproxy/lanproxy-server ./

EXPOSE 8090 4900 4993

CMD ["sh", "-c", "sh bin/startup.sh && tail -f logs/server.log"]