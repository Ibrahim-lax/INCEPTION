FROM debian:bookworm

RUN apt-get update && apt-get install -y wget

# 1. Download the latest binary from Google's GitHub

RUN wget https://github.com/google/cadvisor/releases/download/v0.47.0/cadvisor-v0.47.0-linux-amd64 -O /usr/bin/cadvisor


RUN chmod +x /usr/bin/cadvisor

# 3. Run it
# -logtostderr: Output logs to Docker logs instead of a file
CMD ["/usr/bin/cadvisor", "-logtostderr", "--port=8080"]