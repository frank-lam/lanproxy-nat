docker run -d \
           --name lanproxy-client \
           -e LANPROXY_KEY="input_your_key" \
           -e LANPROXY_HOST="input_your_host" \
           --restart=always \
           franklin5/lanproxy-client