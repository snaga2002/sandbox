# Use official Python image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy app files
COPY app.py /app

# Install Flask
RUN pip install flask

# Expose port 8080
EXPOSE 8080

# Run the app
CMD ["python", "app.py"]
