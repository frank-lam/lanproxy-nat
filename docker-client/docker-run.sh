#!/bin/bash
docker run -it --name lanproxy-client -e LANPROXY_KEY="input_your_key" -e LANPROXY_HOST="input_your_host" -d --restart=always franklin5/lanproxy-client:1.0