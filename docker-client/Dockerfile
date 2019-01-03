FROM centos
# author: frank_lin@whu.edu.cn

# running required command
RUN yum update
RUN yum install vim -y
RUN yum install java-1.8.0-openjdk.x86_64 -y

# copy the code
COPY lanproxy-client /lanproxy-client

WORKDIR /lanproxy-client
ENTRYPOINT ["/lanproxy-client/init.sh"]
WORKDIR /
# EXPOSE 8888
CMD ["/bin/bash"]