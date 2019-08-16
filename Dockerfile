# этап сборки (build stage)
FROM node:12.7.0-alpine as build
WORKDIR /app
COPY . .
RUN npm i && npm run build

# этап production (production-stage)
FROM nginx:stable-alpine as production-stage
COPY --from=build /app/dist/ /var/www
COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

CMD ["nginx"]
