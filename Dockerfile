FROM n8n/n8n-runners:latest

# Install exceljs globally so the task runner can find it
USER root
RUN npm install -g exceljs
