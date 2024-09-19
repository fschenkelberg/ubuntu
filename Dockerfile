# Use the official Ubuntu base image
FROM ubuntu:latest

# Install Ubuntu dependencies
RUN apt-get update && \
    apt-get install -y \
    apache2 \
    build-essential \
    calibre \
    default-jre \
    fdupes \
    git \
    imagemagick \
    mysql-client \
    pandoc \
    pdfgrep \
    pdftk \
    perl \
    php-cli \
    poppler-utils \
    python3.5 \
    python3-dev \
    python3-pip \
    python3-venv \
    sendemail \
    texlive-xetex \
    wget \
    unzip \
    fonts-dejavu && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Add the directories
COPY RocketJot /root/RocketJot
COPY magento /root/magento
COPY jobprofile_builds /root/jobprofile_builds

# Create a virtual environment named RedSkyAlliance in the root directory
RUN python3 -m venv /root/RedSkyAlliance

# Activate the virtual environment and install requirements
RUN /bin/bash -c "source /root/RedSkyAlliance/bin/activate && pip3 install -r /root/RocketJot/requirements.txt"

# Set the working directory
WORKDIR /root/RocketJot

# Run commands when the container starts (optional)
CMD ["bash"]
