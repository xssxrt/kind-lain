ARG PYTHON_VERSION=3.13
FROM ghcr.io/astral-sh/uv:python${PYTHON_VERSION}-bookworm-slim AS uv
WORKDIR /app
COPY --link . .
RUN uv sync --frozen --no-install-project --no-dev
ADD --link . /app
RUN uv sync --frozen --no-dev

FROM python:${PYTHON_VERSION}-slim-bookworm
WORKDIR /app
COPY --from=uv --chown=app:app /app /app

ENV PATH="/app/.venv/bin:$PATH"

CMD ["uvicorn", "main:app", "--host", "0.0.0.0"] 

