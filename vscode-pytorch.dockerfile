# Use the specified image as the base
FROM tverous/pytorch-notebook:latest

# Install curl
RUN apt-get install -y curl

# # Copy the requirements.txt file to the container
COPY requirements.txt  requirements.txt

# # Install the packages from requirements.txt
RUN pip install -r  requirements.txt

# Install Code-Server
RUN curl -fsSL https://code-server.dev/install.sh | sh

# Expose the port Code-Server will run on
EXPOSE 8080

# Set the password for Code-Server
ENV PASSWORD="passd"

# Start Code-Server
CMD ["code-server", "--bind-addr", "0.0.0.0:8080", "--auth", "password"]