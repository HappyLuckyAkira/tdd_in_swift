FROM swift:5.9-focal

# Install additional development tools
RUN apt-get update && apt-get install -y \
    build-essential \
    pkg-config \
    libssl-dev \
    zlib1g-dev \
    && rm -rf /var/lib/apt/lists/*

# Verify Swift installation
RUN swift --version