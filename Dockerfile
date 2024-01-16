# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 for the Flask app
EXPOSE 8000

# Define environment variable
ENV FLASK_APP=core/server.py

# # Run required migrations
# RUN flask db init -d core/migrations/
# RUN flask db migrate -m "Initial migration." -d core/migrations/
# RUN flask db upgrade -d core/migrations/

# Run gunicorn when the container launches
CMD ["gunicorn", "-c", "gunicorn_config.py", "core.server:app" ]
