FROM n8nio/n8n:2.8.3

USER root

WORKDIR /usr/local/lib/node_modules/n8n
RUN npm install exceljs

USER node
