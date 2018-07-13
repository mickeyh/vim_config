A vim configuration.

Requirements:
    * `Adobe Source Code Pro` font installed (`adobe-source-code-pro-fonts` package).

Initial set up:
    0. You probably want to [install vim from source]().
    1. `git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim`
    2. Comment out any calls to `fugitive` in `~/.vim/vimrc`.
    3. Restart vim, installing bundles.
    4. Uncomment out any calls to `fugitive` in `~/.vim/vimrc`.
    5. Restart `vim`.

After cloning, you may want to:
    * Install `clang` so that the `YouCompleteMe` plugin will work out of box.
    * Install `the_silver_surfer` for faster acking. See [the_silver_surfer's hoempage](https://github.com/ggreer/the_silver_searcher).
    * Install `eclim` plugin. For details see [http://eclim.org/install.html].
