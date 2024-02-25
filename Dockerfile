# Use the official Python image as the base image
FROM python:3.8

# Set the working directory in the container
WORKDIR /app

# Copy the application files into the working directory
COPY . /app

# Install the application dependencies
RUN pip install -r requirements.txt

# Expose the port number
EXPOSE 8501

# Command to run the Streamlit app
CMD ["streamlit", "run", "--server.port", "8501", "app.py"]
