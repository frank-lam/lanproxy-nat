docker run -d \
           --name lanproxy-server \
           -p 8090:8090 \
           -p 4900:4900 \
           -p 4993:4993 \
           -p 9000-9100:9000-9100 \
           --restart=always \
           -e LANPROXY_USERNAME="input_username" \
           -e LANPROXY_PASSWORD="input_password" \
           franklin5/lanproxy-server