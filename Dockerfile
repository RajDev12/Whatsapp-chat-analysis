FROM python:3.7-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    curl \
    software-properties-common \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/RajDev12/whatsapp-chat-analysis/

RUN pip3 install -r requirements.txt

EXPOSE 8501

HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
# Use the official Python image as the base image
# FROM python:3.8

# # Set the working directory in the container
# WORKDIR /app

# # Copy the application files into the working directory
# COPY . /app

# # Create a virtual environment
# RUN python -m venv /venv

# # Activate the virtual environment
# ENV PATH="/venv/bin:$PATH"

# # Install the application dependencies
# RUN pip install --no-cache-dir -r requirements.txt

# # Expose the port number
# EXPOSE 8501

# # Command to run the Streamlit app
# CMD ["streamlit", "run", "--server.port", "8501", "app.py"]
