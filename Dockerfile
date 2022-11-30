FROM ubuntu:latest

# Install a few dependencies
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install tmux zsh neovim exa git -y

# Copy all files in dotfiles
WORKDIR dotfiles
COPY . .

RUN install.sh

ENTRYPOINT tmux -c zsh -d
