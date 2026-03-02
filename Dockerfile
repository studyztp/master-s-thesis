# Use a base image with LaTeX installed
FROM blang/latex

# Create a new user and group with the same ID as the host user and group
ARG UID
ARG GID
RUN groupadd -g $GID user && \
    useradd --create-home --uid $UID --gid $GID user
USER user

# Set the working directory
WORKDIR /data
