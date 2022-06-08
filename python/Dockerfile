FROM jupyter/base-notebook

COPY --chown=${NB_UID}:${NB_GID} requirements.txt /tmp/
RUN pip install --quiet --no-cache-dir --requirement /tmp/requirements.txt && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

COPY client.ipynb client.ipynb

ENV DOCKER_STACKS_JUPYTER_CMD notebook
ENV NOTEBOOK_ARGS --NotebookApp.default_url notebooks/client.ipynb
