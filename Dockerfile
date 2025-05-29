FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app.py .

# Install gunicorn
RUN pip install gunicorn

# Use gunicorn to run the app
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
