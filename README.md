# Neovim config

Personal configuration for neovim

### Requirement

#### Windows (scoop)

```powershell
scoop install python            # fugitive/coq requirement
scoop install nodejs            # lsp installer requirement
scoop install code-minimap      # minimap requirement
scoop install ripgrep           # telescope requirement
scoop install Cascadia-Code     # nerd font

pip install pynvim              # python library

scoop install neovide           # GUI client
```

You also need to install vim plug

```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

Optional dependencies

```powershell
scoop install rust              # for cargo
cargo install stylua            # lua formatter
pip install black               # python formatter
pip install isort               # python import sorting
pip install pylint              # python linter
npm install -g prettier         # web languages formatter
npm install -g eslint           # web languages linter
```

### Usage

After setup, first thing to do in vim is:

-   To install the completion engine's dependencies :

```vimscript
:COQdeps
```

-   To install the lsp servers :

```vimscript
:LspInstallInfo
```

-   To Install the debugger adapters :

```vimscript
:VimspectorInstall --all
```

The leader key is &lt;space&gt; the main key bindings are :

-   &lt;leader&gt; f ... : Telescope related shortcuts
-   &lt;leader&gt; e : File explorer
-   &lt;leader&gt; c : Commenting selection
-   &lt;leader&gt; g ... : Git related key bindings

Other useful keybindings :

-   &lt;alt&gt; h/j/k/l to move the selection around

### TODO

-   [ ] Find an equivalent of sniprun for windows
-   [ ] Try out nvim-dap
-   [ ] Change to a neovim autoformatter
-   [ ] Switch to packer plugin manager
-   [ ] Grey out gitignored files in nvim-tree
