FROM python:3.9-slim-buster

WORKDIR /usr/app

# Set up and activate virtual environment
ENV VIRTUAL_ENV "/usr/app/env"
RUN python -m venv $VIRTUAL_ENV
ENV PATH "$VIRTUAL_ENV/bin:$PATH"

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt
COPY . .

CMD ["python", "-m", "titan"]
