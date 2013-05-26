A vim configuration.

After cloning, you should:
   1. Initialize submodules using `git submodule update --init`. You must also go into any plugin directory with submodules and run this command (in particular YouCompleteMe).
   2. Build the `command-t` plugin. For details see [command-t's homepage](https://github.com/wincent/Command-T). Note that it isn't necessary to use the vimball to install, you just need to build the C extension.
   3. Build the `YouCompleteMe` plugin.  For details see [YouCompleteMe's homepage](https://github.com/Valloric/YouCompleteMe).
   4. Add symlinks to vimrc and gvimrc using `ln -s ~/.vim/vimrc ~/.vimrc` and `ln -s ~/.vim/gvimrc ~/.gvimrc`.
