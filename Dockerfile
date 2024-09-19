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

# Set the working directory
WORKDIR /root/RocketJot

# Add the RocketJot directory
COPY RocketJot /root/RocketJot

# Run commands when the container starts (optional)
CMD ["bash"]
