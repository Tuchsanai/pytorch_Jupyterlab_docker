

# Using a base image with a Linux distribution (Ubuntu in this case)
FROM ubuntu:latest

# Set environment variables to non-interactive (this prevents some prompts)
ENV DEBIAN_FRONTEND=non-interactive

# Install curl and other dependencies
RUN apt-get update \
    && apt-get install -y curl


# Install code-server
RUN curl -fsSL https://code-server.dev/install.sh | sh


# Copy a custom config file if it exists
COPY config.yaml /root/.config/code-server/config.yaml


# Expose the code-server port
EXPOSE 8080

# Run code-server with the specified password
ENTRYPOINT ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "password"]
