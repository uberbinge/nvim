# neovim

>My nvim configuration with the aim of not cluttering nvim with plugins unnecessarily and instead improving the core functions of Vim with some Quality of Life plugins.

<div align="center">
<img src=".img/setup.png" width="85%">
</div>

## Required tools

```bash
# LSP
brew install gopls
brew install hashicorp/tap/terraform-ls
brew install lua-language-server
brew install yaml-language-server
npm install -g dockerfile-language-server-nodejs
npm install -g typescript typescript-language-server

# tools
brew install ripgrep
```

## Plugins

* git
* lsp
* lualine
* neo-tree
* nvim-autopairs
* nvim-cmp
* nvim-treesitter
* telescope
* toggleterm
* which-key

## Terminal

This setup works well with the following `Alacritty` terminal config

```yaml
colors:
  primary:
    background: '#1F1F28'
window:
  opacity: 0.98
  decorations: none
font:
  size: 14
  normal:
    family: Hack Nerd Font Mono
    style: Regular
  bold:
    family: Hack Nerd Font Mono
    style: Bold
  italic:
    family: Hack Nerd Font Mono
    style: Italic
```

## Acknowledgements

Special Thanks to the following people:

* @allaman
* @alvaroaleman (for sharing your dotfiles with me :D)
* @jan-xyz (for giving me an introduction to `nvim`)
* @snowiow (for making me not giving up on learning `vim`)
