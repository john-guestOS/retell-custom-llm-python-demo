FROM python:3.11-slim
WORKDIR /app
COPY ./app /app
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8080
CMD ["uvicorn", "server:app", "--reload", "--host", "0.0.0.0", "--port", "8080"]
