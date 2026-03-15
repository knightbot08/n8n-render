FROM n8nio/n8n:2.8.3

USER root

RUN npm install -g exceljs

ENV NODE_PATH=/usr/local/lib/node_modules

USER node
