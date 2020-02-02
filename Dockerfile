FROM node:12-alpine
WORKDIR /app
COPY ./public ./public
COPY package* ./
RUN npm install
ENTRYPOINT ["./node_modules/.bin/http-server"]
CMD ["-c-1"]
