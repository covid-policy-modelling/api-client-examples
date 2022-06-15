Sample clients demonstrating how to communicate the COVID-UI API.

All the clients demonstrate a basic set of steps to:

* Submit a simulation
* Poll until the simulation is complete
* Retrieve the results of the simulation

In addition, the Python client demonstrates:

* Downloading logs
* Error responses
* Higher-level API for submitting sets of simulations with a common set of parameters

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

Run `docker-compose -f docker-compose.yml -f docker-compose.test.yml run --rm python-client`.

This will execute the notebook, and display the results to stdout in Markdown format.

#### Without Docker

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

### Julia

#### Interactively via Docker and Docker Compose

Run `docker-compose up julia-client`.

This will start a server, and display the URL to connect to (beginning `http://127.0.0.1:8888/?token=...`).
Copy this URL, and open it in a browser window to access the notebook.

#### Non-interactively via Docker and Docker Compose

Run `docker-compose -f docker-compose.yml -f docker-compose.test.yml run --rm julia-client`.

This will execute the notebook, and display the results to stdout in Markdown format.

#### Without Docker

The client is written as a Jupyter notebook, and should be able to be run using a Jupyter server with an appropriate kernel and dependencies installed.
This has not been tested or documented however.

### R

#### Interactively via Docker and Docker Compose

Run `docker-compose up r-client`.

This will start a RStudio server, and display a password.
Open a browser window for the URL `http://127.0.0.1:8787`, and use the username `rstudio` and supplied password to access.
Open the file `client.Rmd`, which you can than read and execute.

#### Non-interactively via Docker and Docker Compose

Run `docker-compose -f docker-compose.yml -f docker-compose.test.yml run --rm r-client`.

This will execute the notebook, and display the results to stdout.

#### Without Docker

The client is written as a R Markdown file, and should be able to be run using R with appropriate dependencies installed.
This has not been tested or documented however.

## Updating the clients

If you wanto to contribute changes to the clients, please ensure you have cleared the output of the Jupyter notebooks before committing.

The default Docker Compose commands do not allow you to save any changes you make to the notebooks - the client files are read-only.
If you do want to make changes, you can do so using the following commands:

`docker-compose -f docker-compose.yml -f docker-compose.dev.yml up <language>-client`.
