FROM cgr.dev/chainguard/python:latest-dev as builder
WORKDIR /app

COPY requirements.txt .
RUN pip install --user --no-cache-dir -r requirements.txt

FROM cgr.dev/chainguard/python:latest
WORKDIR /app

COPY --from=builder /home/nonroot/.local /home/nonroot/.local

ENV PATH=/home/nonroot/.local/bin:$PATH

COPY app.py .
COPY templates templates/
COPY static static/

ENTRYPOINT ["flask", "run", "--host=0.0.0.0"]