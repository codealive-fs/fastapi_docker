# Use official Python image
FROM python:3.12-slim

# Set working directory inside container
WORKDIR /app

# Copy requirements first (better for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Command to run FastAPI with Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
