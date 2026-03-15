# Pin to a specific version matching your n8n instance (check Settings > About)
# Examples: n8nio/runners:1.62.5  or :stable or :latest if you accept drift
FROM n8nio/runners:latest

USER root

# The JS task runner lives here — install deps locally with pnpm (what n8n uses internally)
# This makes exceljs available exactly where the require resolver looks
RUN cd /opt/runners/task-runner-javascript && \
    pnpm add exceljs

# Optional: add more packages the same way
# RUN cd /opt/runners/task-runner-javascript && pnpm add lodash dayjs xlsx

# Optional: if you also need Python deps later
# RUN cd /opt/runners/task-runner-python && pip install openpyxl pandas

USER node
