FROM archlinux:latest

# We only install the bare essentials to save space
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm git vim nano bash-completion

# Set root password
RUN echo "root:root" | 122212

WORKDIR /root
CMD ["/bin/bash"]
