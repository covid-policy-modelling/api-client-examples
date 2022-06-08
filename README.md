Sample clients demonstrating how to communicate the COVID-UI API.

## Authentication

In order to authenticate with the COVID-UI API, you first need to obtain an API token.
See the [API documentation](https://covid-modelling-stg.epcc.ed.ac.uk/apidoc) for more details on how to obtain a token.
After you have a token, you need to export it as an environment variable called `API_TOKEN`.
The most straight-forward way is place the value in a file called `.env`, e.g.:

```
API_TOKEN=eyJ...
```

## Running the clients

### Python

#### Interactively via Docker and Docker Compose

Run `docker-compose up python-client`.

This will start a server, and display the URL to connect to (beginning `http://127.0.0.1:8888/?token=...`).
Copy this URL, and open it in a browser window to access the notebook.

#### Non-interactively via Docker and Docker Compose

Run `docker-compose -f docker-compose.test.yml -f docker-compose.yml run --rm python-client`.

This will execute the notebook, and display the results to stdout in Markdown format.

#### without Docker

The client is written as a Jupyter notebook, and can be run using any Jupyter server.
A `requirements.txt` file is provided with the appropriate dependencies (except Jupyter).
You may wish to use a virtual environment to install dependencies into.

```
source .env
python -m venv venv/
source venv/bin/activate
pip install jupyter
pip install python/requirements.txt
jupyter notebook/client.ipynb
```

This will start a server, and open a browser window showing the notebook.
