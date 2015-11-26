FROM node:0.12.2-onbuild

ENV APP_HOME /app
RUN mkdir /app
WORKDIR /app

ADD package.json package.json
RUN npm install

ADD . /app
RUN cd /app; 

CMD ["node","index.js"]
