#!/bin/sh
# Copy Jupyter-notebooks to /programmierung/Jupyter-notebooks if not already present
if [ ! -d "/programmierung/Jupyter-notebooks" ]; then
  cp -r /workspace/Jupyter-notebooks /programmierung/
fi

# Starte Jupyter Lab
exec jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token=''
