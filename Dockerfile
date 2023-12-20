
# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory
WORKDIR /usr/src/app

# Copy requirements.txt to the working directory
COPY requirements.txt ./

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the working directory
COPY . .

# Expose the port on which the app will run
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
