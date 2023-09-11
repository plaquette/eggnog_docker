# Use an official Python runtime as the base image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Install necessary build tools, libraries, and wget. Then clean up.
RUN apt-get update && \
    apt-get install -y git build-essential python3-dev wget && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

# Clone the repository and remove the .git directory to save space
RUN git clone https://github.com/eggnogdb/eggnog-mapper.git . && \
    rm -rf .git

# Install the dependencies and clean up pip cache
RUN pip install --no-cache-dir -r requirements.txt && \
    rm -rf /root/.cache/pip

# Set the PATH environment variable to include eggNOG-mapper binaries
ENV PATH="/usr/src/app:/usr/src/app/eggnogmapper/bin:${PATH}"

# Default command to run when the container starts
CMD ["bash"]