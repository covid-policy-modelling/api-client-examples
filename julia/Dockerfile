FROM jupyter/datascience-notebook

RUN julia -e 'import Pkg; Pkg.add(["DataStructures", "HTTP", "JSON"])'

COPY --chown=${NB_UID}:${NB_GID} client.ipynb client.ipynb

ENV DOCKER_STACKS_JUPYTER_CMD notebook
ENV NOTEBOOK_ARGS --NotebookApp.default_url notebooks/client.ipynb
