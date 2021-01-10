From karthequian/helloworld:latest
COPY . /usr/local/src
WORKDIR /usr/local/src
ENTRYPOINT ["/bin/sh"]
