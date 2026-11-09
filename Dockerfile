FROM ubuntu:24.04

ARG USER_PASSWORD=changeme

RUN find /etc/dpkg/dpkg.cfg.d -type f -exec sed -i '/path-exclude.*\/usr\/share\/man/d' {} + 2>/dev/null; \
    apt-get update && apt-get install -y \
    bash-completion \
    bc \
    bsdmainutils \
    cowsay \
    cron \
    curl \
    fdisk \
    file \
    git \
    htop \
    iproute2 \
    iputils-ping \
    less \
    man \
    manpages \
    manpages-dev \
    nano \
    neofetch \
    net-tools \
    nmap \
    openssh-client \
    pipx \
    plocate \
    python3 \
    python3-pip \
    python3-venv \
    rsync \
    screen \
    sl \
    sudo \
    sysstat \
    traceroute \
    trash-cli \
    tree \
    unzip \
    vim \
    wget \
    zip \
    && rm -rf /var/lib/apt/lists/*

RUN dpkg-divert --remove /usr/bin/man && \
    rm /usr/bin/man && mv /usr/bin/man.REAL /usr/bin/man && \
    mandb

RUN apt-get update && apt-get install -y --reinstall coreutils && rm -rf /var/lib/apt/lists/*

RUN userdel -r ubuntu 2>/dev/null || true; \
    groupdel ubuntu 2>/dev/null || true; \
    groupadd -g 1000 alumno && \
    useradd -m -u 1000 -g 1000 -s /bin/bash alumno && usermod -aG sudo alumno && \
    echo "alumno:${USER_PASSWORD}" | chpasswd && \
    echo "alumno ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/alumno

RUN mkdir -p /home/alumno/shared && chown alumno:alumno /home/alumno/shared && chmod 755 /home/alumno/shared && \
    echo 'export PATH="$HOME/.local/bin:/usr/games:$PATH"' >> /home/alumno/.bashrc && \
    echo 'PS1='"'"'\[\e[38;5;75m\]\u\[\e[0m\]@\[\e[38;5;147m\]\h\[\e[0m\]:\[\e[1m\]\w\[\e[0m\]\n\$ '"'" >> /home/alumno/.bashrc && \
    echo '[ -f ~/shared/.bashrc ] && source ~/shared/.bashrc' >> /home/alumno/.bashrc

USER alumno

ENV PATH="/home/alumno/.local/bin:/usr/games:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"

RUN pipx install tldr && /home/alumno/.local/bin/tldr --update

WORKDIR /home/alumno

CMD ["/bin/bash"]
