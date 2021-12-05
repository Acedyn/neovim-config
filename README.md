# Neovim config

Personal configuration for neovim

### Requirement

#### Windows (scoop)

```powershell
scoop install python            # fugitive/coq requirement
scoop install nodejs            # lsp installer requirement
scoop install rust              # minimap requirement
scoop install ripgrep           # telescope requirement
scoop install Cascadia-Code     # nerd font

scoop install neovide           # GUI client
```

If not already done, add to the PATH variable:

-   "$HOME\\.cargo\bin" (for rust binaries)

### Usage

The leader key is &lt;space&gt; the main key bindings are :

-   &lt;leader&gt; f ... : Telescope related shortcuts
-   &lt;leader&gt; e : File explorer
-   &lt;leader&gt; c : Commenting selection
-   &lt;leader&gt; g ... : Git related key bindings

Other useful keybindings :

-   &lt;alt&gt; h/j/k/l to move the selection around
