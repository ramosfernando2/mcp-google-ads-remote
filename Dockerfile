FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt "mcp<2" uvicorn

COPY google_ads_server.py .

ENV MCP_TRANSPORT=http
ENV PORT=8000
EXPOSE 8000

CMD ["python", "google_ads_server.py"]
