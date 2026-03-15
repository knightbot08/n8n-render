FROM n8nio/n8n:2.8.3

USER root

RUN mkdir -p /home/node/.n8n \
 && cd /home/node/.n8n \
 && npm install exceljs

USER node
