# Use the official Python image
FROM python:3.9-slim

# Set a working directory
WORKDIR /app

# Copy requirements.txt to the container
COPY requirements.txt .

# Upgrade pip and install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    pip install notebook

# Expose port 8888 for Jupyter Notebook
EXPOSE 8888

# Default command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]