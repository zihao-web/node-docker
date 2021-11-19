# syntax=docker/dockerfile:1

FROM node:12.18.4-alpine

MAINTAINER zihao

# 设置环境变量
ENV NODE_ENV=production

# 表示进入容器的时候，默认进入的目录
WORKDIR /app

# 分层，缓存包的镜像层
COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

COPY . .

# 指定容器内部要暴露的端口
EXPOSE 3000

CMD [ "node", "index.js" ]