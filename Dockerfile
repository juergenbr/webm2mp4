FROM node:alpine
RUN apk add  --no-cache ffmpeg

VOLUME ["/root"]

#ADD setup-ffmpeg.sh /root
#RUN /root/setup-ffmpeg.sh

# Create app directory
WORKDIR /usr/src/app

COPY *.json ./
COPY *.js ./
COPY .env ./

RUN npm install

EXPOSE 8080
CMD [ "node", "bot.js" ]