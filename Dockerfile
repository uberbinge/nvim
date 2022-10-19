FROM ubuntu:latest

ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8

# install nvim
RUN apt-get update -y \
  && apt-get upgrade -y \
  && apt-get install --no-install-recommends -y \
  apt-transport-https \
  autoconf \
  automake \
  ca-certificates \
  cmake \
  coreutils \
  curl \
  locales \
  git \
  gnupg \
  make \
  pkg-config \
  sudo \
  tar \
  unzip \
  wget \
  zip \
  fzf \
  ripgrep \
  fd-find \
  vim \
  neovim \
  && rm -rf /var/lib/apt/lists/* \
  && ln -s "$(which fdfind)" /usr/bin/fd

# Set correct locale
RUN sed -i '/en_US.UTF-8/s/^# //g' /etc/locale.gen && dpkg-reconfigure --frontend=noninteractive locales

# Install (global) dependencies (tools, formatters and LSPs)
RUN apt-get update \
  && apt-get install --no-install-recommends -y \
  python3-pip \
  golang-go \
  npm \
  && npm i -g \
  prettier \
  eslint \
  bash-language-server \
  dockerfile-language-server-nodejs \
  yaml-language-server \
  typescript \
  typescript-language-server \
  vscode-langservers-extracted \
  && rm -rf /var/lib/apt/lists/*

# Add user 'nvim' and allow passwordless sudo
RUN adduser --disabled-password --gecos '' nvim \
  && adduser nvim sudo \
  && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER nvim
WORKDIR /home/nvim


