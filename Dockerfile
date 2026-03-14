FROM n8nio/n8n:2.8.3

USER root
RUN npm install -g exceljs

USER node