FROM nginx:alpine

WORKDIR /app

COPY documents ./documents
COPY en ./en
COPY images ./images

COPY circle.yml .
COPY *.html .
COPY KSET_portfolio.pdf .
COPY package.json .
COPY styles.css .

COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN apk update && apk add npm 
RUN npm install
