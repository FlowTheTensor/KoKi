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


# Copy entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set working directory
WORKDIR /programmierung/KoKI/Jupyter-notebooks

# Expose Jupyter port
EXPOSE 8888

# Start with entrypoint script
ENTRYPOINT ["/entrypoint.sh"]
