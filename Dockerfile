# Dockerfile for Jupyter Notebook with TensorFlow, ipywidgets, and common data science libraries
FROM python:3.10-slim

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential \
        git \
        curl \
        && rm -rf /var/lib/apt/lists/*

# Install Jupyter and Python packages
RUN pip install --no-cache-dir \
    jupyterlab \
    notebook \
    ipywidgets \
    tensorflow \
    matplotlib \
    pandas \
    scikit-learn \
    seaborn \
    plotly




# Copy Jupyter-notebooks into image (for later copying into volume)
COPY Jupyter-notebooks /workspace/Jupyter-notebooks

# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set working directory
WORKDIR /workspace

# Expose Jupyter port
EXPOSE 4321

# Start with entrypoint script
ENTRYPOINT ["/entrypoint.sh"]
