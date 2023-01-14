FROM python:3.9-slim

RUN pip install fastapi uvicorn

WORKDIR /app

COPY main.py .

ENTRYPOINT ["uvicorn", "main:app"]
CMD ["--host", "0.0.0.0", "--port", "5001"]