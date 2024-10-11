FROM python:3.12-slim-bookworm 
WORKDIR /app

# Install poetry, create venv and add to path
RUN pip install pipx && pipx install poetry && pipx ensurepath && \
    find / | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf && \
    rm -rf ~/.cache ~/.local/state 
RUN python3 -m venv --without-pip .venv
ENV PATH="/app/.venv/bin:$PATH:/root/.local/bin"
