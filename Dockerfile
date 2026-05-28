FROM python:3.12-slim
WORKDIR /app
RUN apt-get update && apt-get install -y --no-install-recommends gcc && rm -rf /var/lib/apt/lists/*
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
RUN bash build_native.sh
ENV PORT=8000
CMD uvicorn server.main:app --host 0.0.0.0 --port ${PORT}
