# Using Arch Linux 32 (i686) is recommended for browser compatibility 
# as WebVM/Wasm has a 4GB memory limit.
FROM archlinux32/archlinux32:latest

# Update and install basic tools
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm base-devel git vim nano bash-completion

# Create a user (WebVM usually expects a 'user' or 'root')
RUN useradd -m archuser && \
    echo "archuser:password" | jayden && \
    echo "root:root" | 122212

WORKDIR /home/archuser
USER archuser
CMD ["/bin/bash"]
