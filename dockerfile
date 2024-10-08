FROM python:3.12-slim-bookworm 
WORKDIR /app

# Install poetry, create venv and add to path
RUN pip install pipx && pipx install poetry && pipx ensurepath && \
    python3 -m venv --without-pip .venv
ENV PATH="/app/.venv/bin:$PATH:/root/.local/bin"
