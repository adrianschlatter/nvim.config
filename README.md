# My neovim config

* catppuccin theme
* treesitter for live-parsing and highlighting
* an LSP server for code completion
* telescope (fuzzy finder)
* harpoon (quicker navigation)
* debugging


# Installation

* Clone packer.nvim into
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
* For copilot support, install node.js, first. Make sure its a new enough
  version).
* clone this repo into ~/.config/nvim

When first starting nvim, run ```:Copilot setup```


# History

* Configure treesitter, LSP, telescope, harpoon according to
  (ThePrimeagen)[https://youtu.be/w7i4amO_zaE?si=jhcGhrhTTjaMr4XR]
* Install nvim-dap (DAP client for nvim), nvim-dap-python (configures the
  python DAP adapter for nvim), nvim-dap-ui (nice GUI for debugging)
    - make sure to install debugpy (the DAP adapter for python) according to
      the GitHub site of nvim-dap-python
