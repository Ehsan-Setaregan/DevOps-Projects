# Use a lightweight official Python 3.12 image as the base
FROM python:3.12-slim

# Set /app as the working directory inside the container
WORKDIR /app

# Copy requirements.txt into the working directory
COPY requirements.txt .

# Install Python dependencies without caching to keep the image small
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Document that the container listens on port 5000 (does not publish it)
EXPOSE 5000

# Default command to run the app when the container starts
CMD ["python", "app.py"]

