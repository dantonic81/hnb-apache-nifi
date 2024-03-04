FROM apache/nifi:latest

USER root

RUN apt-get update && \
    apt-get install -y python3 python3-pip

COPY requirements.txt /tmp/requirements.txt

# Install the Python dependencies
RUN pip install --no-cache-dir -r /tmp/requirements.txt
