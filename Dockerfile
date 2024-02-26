# Use the official Python image as the base image
FROM python:3.7-slim

# Set up a non-root user
RUN useradd -m appuser
USER appuser

# Set the working directory
WORKDIR /app

# Install virtualenv
RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install --no-cache-dir virtualenv

# Create and activate a virtual environment
RUN python3 -m virtualenv /home/appuser/venv
ENV PATH="/home/appuser/venv/bin:$PATH"

# Copy the application files into the working directory
COPY . .

# Install the application dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port
EXPOSE 8501

# Command to run the Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
