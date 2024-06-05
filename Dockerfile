# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 9876 available to the world outside this container
EXPOSE 9990

# Run main.py when the container launches
CMD ["sh", "./webui.sh --api --listen --port 9990 --xformers"]
