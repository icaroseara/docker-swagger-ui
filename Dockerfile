FROM mhart/alpine-node

ENV VERSION "2.0.24"
ENV FOLDER "swagger-ui-${VERSION}"

WORKDIR /app

RUN apk update && apk add openssl
RUN wget -qO- https://github.com/swagger-api/swagger-ui/archive/v${VERSION}.tar.gz | tar xvz
RUN cp -r ${FOLDER}/dist/* . && rm -rf ${FOLDER}
RUN npm install -g http-server
RUN apk del openssl

ADD run.sh run.sh

# webserver port
EXPOSE 8080

CMD ["sh", "run.sh"]
