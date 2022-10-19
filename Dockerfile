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

ENV PATH=$PATH:/usr/local/bin/go/bin/:/home/nvim/.local/bin:/home/nvim/.local/bin/bin:/home/nvim/go/bin:/home/nvim/.cargo/bin
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# language-specific: golang
RUN go install golang.org/x/tools/cmd/goimports@latest \
	&& go install mvdan.cc/gofumpt@latest \
	&& go install golang.org/x/tools/gopls@latest

# language-specific: terraform
RUN curl -sLo tf-ls.zip "https://releases.hashicorp.com/terraform-ls/0.27.0/terraform-ls_0.27.0_linux_amd64.zip" \
	&& unzip -d ~/.local/bin tf-ls.zip \
	&& rm tf-ls.zip \
	&& curl -sLo tf.zip "https://releases.hashicorp.com/terraform/1.2.1/terraform_1.2.1_linux_amd64.zip" \
	&& unzip -d ~/.local/bin tf.zip

# Copy Neovim config into the image
RUN mkdir -p .config/nvim
COPY --chown=nvim:nvim . .config/nvim

RUN git clone --depth 1 https://github.com/wbthomason/packer.nvim \
	~/.local/share/nvim/site/pack/packer/start/packer.nvim \
	&& sed -i 's/  max_jobs = 20,/  max_jobs = nil,/' .config/nvim/lua/plugins.lua \
	&& nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync' \
	&& nvim --headless -c 'TSInstall' +"sleep 15" +qa || true

ENTRYPOINT ["/bin/bash", "-c", "nvim"]


