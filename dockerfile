FROM python:3.12-slim-bookworm 
WORKDIR /app

# Install poetry, create venv and add to path
RUN pip install --no-cache-dir pipx
RUN pipx install --pip-args="--no-cache-dir" poetry && pipx ensurepath
# RUN python3 -m venv --without-pip .venv
# ENV PATH="$PATH:/root/.local/bin"