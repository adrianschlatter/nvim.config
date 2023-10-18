# My next neovim config

I want:

* catppuccin theme
* treeview file browser
* treesitter for live-parsing and highlighting
* an LSP server for code completion
* maybe telescope (fuzzy finder)
* maybe harpoon (quicker navigation)
* debugging (of python scripts)

# Steps

* Clone packer.nvim into
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
* Configure treesitter, LSP, telescope, harpoon according to
  (ThePrimeagen)[https://youtu.be/w7i4amO_zaE?si=jhcGhrhTTjaMr4XR]
* Install nvim-dap (DAP client for nvim), nvim-dap-python (configures the
  python DAP adapter for nvim), nvim-dap-ui (nice GUI for debugging)
    - make sure to install debugpy (the DAP adapter for python) according to
      the GitHub site of nvim-dap-python
