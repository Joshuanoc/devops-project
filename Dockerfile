# Use a slim Python base image
FROM python:3.9-slim

# Set working directory inside the container
WORKDIR /app

# Copy the current directory's contents into /app in the container
COPY . .

# Install Flask
RUN pip install flask

# Run the app
CMD ["python", "app.py"]




