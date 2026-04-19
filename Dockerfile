FROM node


ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=qwerty

RUN mkdir -p testapp


RUN npm install

COPY . /testapp

CMD ["node", "/testapp/server.js"]