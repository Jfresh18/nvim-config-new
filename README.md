This is my current neovim configuration that I started on oct 28, 2025.

Current Features/Plugins
------------------------
- terminal emulator => ITerm2, just don't use default mac terminal for colors
- Lazy-nvim => package manager for plugins
- nvim-treesitter => syntax highlighting, indentation, and folds which are 
  compatible with telescope fuzzy finder
    - installed-parsers
        - c
        - c++
        - rust
        - lua
        - ocaml (for a class)
        - python 
- Telescope => fuzzy finder to easily find files by pressing <space f f>
    - shows syntax highlighing with treesitter fix branch
    - added background and border colors to ui
- Color scheme => Use kanagawa default scheme
    - this relies on my terminal background color settings
      to look how i want it which I will add a screenshot later
- Lualine => simple more informative status bar that shows mode, branch, diff,
             filename, extension, percent through the file, and location (height, width)
- Misc opts/binds =>
    - <space c d> for returning to file explorer
    - line numbers are on as well as relative line numbers
    - any yank will automatically copy to system clipboard, can easily 
      be changed in options.lua
    - shiftwidth (indentation) set to 4 spaces


