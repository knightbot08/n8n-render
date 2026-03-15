# Use a version tag matching your n8n instance (check Settings → About in n8n UI)
# Or use :latest if you're okay with that (but version pinning is safer)
FROM n8nio/runners:latest

USER root

# Install exceljs globally (task runner resolves from global modules)
RUN npm install -g exceljs

# Add any other JS packages your Code nodes need
# RUN npm install -g lodash axios ...

USER node
