#!/bin/sh
# Beim ersten Start: git clone oder git pull, falls Repo schon existiert
NOTEBOOK_DIR="/programmierung/KoKI/Jupyter-notebooks"
REPO_DIR="/programmierung/KoKI"
REPO_URL="https://github.com/FlowTheTensor/KoKi.git"

if [ ! -d "$REPO_DIR/.git" ]; then
	# Falls das Repo noch nicht existiert, klonen
	git clone "$REPO_URL" "$REPO_DIR"
fi

# Starte Jupyter Lab
exec jupyter lab --ip=0.0.0.0 --port=8888 --no-browser --allow-root --NotebookApp.token='' --notebook-dir="$NOTEBOOK_DIR"
