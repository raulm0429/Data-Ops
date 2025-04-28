# Use Python base image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy files into container
COPY . .

# Install dependencies
RUN pip install requests pandas

# Run the ETL script
CMD ["python", "open-meteo.py"]
