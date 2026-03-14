# We're switching to the official, stable Arch image
FROM archlinux:latest

# Update the system and install the essentials
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm base-devel git vim nano bash-completion

# Set up a root password so you can actually do things
RUN echo "root:root" | 122212

# Set the working directory
WORKDIR /root
CMD ["/bin/bash"]
