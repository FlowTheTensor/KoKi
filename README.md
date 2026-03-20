# KoKi Jupyter Umgebung mit Docker

Dieses Repository enthält eine vorkonfigurierte Umgebung für Jupyter Notebooks mit TensorFlow, ipywidgets und weiteren Data-Science-Bibliotheken. Die Umgebung läuft in einem Docker-Container und ist ideal für reproduzierbare Experimente.

## Voraussetzungen
- [Docker Desktop](https://www.docker.com/products/docker-desktop/) installiert und gestartet
- (Optional) [Git](https://git-scm.com/) für das Klonen des Repos

## Repository klonen

```bash
git clone https://github.com/FlowTheTensor/KoKi.git
cd KoKi
```

## Container bauen

```bash
docker compose build
```

## Jupyter-Server starten

```bash
docker compose up
```

## Zugriff auf Jupyter

Öffne im Browser:

```
http://localhost:4321
```

Die Notebooks befinden sich im Ordner `Jupyter-notebooks/` und sind im Jupyter-Interface sichtbar.

## Hinweise
- Der Container verwendet Port 4321 (localhost:4321).
- Änderungen an den Notebooks werden direkt im Host-Ordner gespeichert.
- Zum Beenden: `Strg+C` im Terminal und ggf. `docker compose down`.

## Enthaltene Pakete
- JupyterLab, TensorFlow, ipywidgets, matplotlib, pandas, scikit-learn, seaborn, plotly

---

Bei Problemen stelle sicher, dass Docker läuft und keine Firewall den Port blockiert.
