# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy all project files into the container
COPY . /app

# Make the Python script executable
RUN chmod +x prog.py test.py

# Define the default command to run the main script
CMD ["python", "./prog.py"]
