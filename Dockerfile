# Use Rocky Linux 8 as the base image
FROM rockylinux:8

# Set the maintainer label
LABEL maintainer="your_email@example.com"

# Install necessary dependencies for building C++ projects
RUN dnf -y update && \
    dnf -y groupinstall "Development Tools" && \
    dnf -y install \
    cmake \
    gcc-c++ \
    make \
    git \
    gdb \
    clang \
    libstdc++-devel \
    boost-devel \
    && dnf clean all

# Set the working directory
WORKDIR /workspace

# Default command to run when the container starts (optional)
CMD ["/bin/bash"]
