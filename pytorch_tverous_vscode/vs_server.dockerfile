
# Use the specified image as the base
FROM tverous/pytorch-notebook:latest


# Install curl and other dependencies
RUN apt-get update \
    && apt-get install -y curl



# Install code-server
RUN curl -fsSL https://code-server.dev/install.sh | sh
# Copy a custom config file if it exists

COPY config.yaml  /root/.config/code-server/config.yaml


# Copy the requirements.txt file to the container
COPY requirements.txt  /root/.config/code-server/requirements.txt
RUN pip install -r  /root/.config/code-server/requirements.txt

# Create a custom directory
RUN mkdir -p ./Workspace

# Expose the code-server port
EXPOSE 8080

# Run code-server with the specified password
ENTRYPOINT ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "password"]



