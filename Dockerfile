# Use a lightweight official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container at /app
COPY . .

# Expose the port your app runs on (e.g., 5000 for Flask, 8000 for Django/FastAPI)
EXPOSE 5000

# Define the command to run the application when the container launches
CMD ["python", "app.py"]

