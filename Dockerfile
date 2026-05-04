FROM python:3.13-alpine

WORKDIR /app

COPY requirements/backend.in requirements/backend.in
RUN pip install -r requirements/backend.in

COPY . .

ENV PYTHONPATH=/app

CMD ["uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]