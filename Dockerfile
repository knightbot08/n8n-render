FROM n8nio/n8n:2.8.3

USER root

WORKDIR /data
RUN npm install exceljs

ENV NODE_PATH=/data/node_modules

USER node
