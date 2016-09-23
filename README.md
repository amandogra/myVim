#myVim

This is a copy of the .vimrc file which I am using for my Vim. I have started using Vim about an year ago. For initial ramping up I have used (spf-13)[https://github.com/spf13/spf13-vim] distribution, which is awesome.
But now the time has come to take more control of my editor and add only those things to .vimrc which I understand or need. In the end, my .vimrc might become similar of that of spf13 or might not. Who cares, the point is I am learning Vim and totally loving it.

Feel free to use this .vimrc if it suits you or better create your own. To use this .vimrc you need Vim version 7.4 or greater. To install vim on MacOS using Homebrew run the following command:

```
brew install vim --with-lua --override-system-vim
```

OR

You could also install [NeoVim](https://neovim.io/). This distribution of Vim looks promising. If you're using NeoVim, then use `init.vim` file instead of `.vimrc`. In that case you have to copy the file in `~/.config/nvim` directory

Once you have installed Vim or NeoVim execute the following command to install Vundle (the package manager for Vim):

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

A good source for my Vim knowledge is (vimcasts.org)[https://www.vimcasts.org], I highly recommend going though those screencasts. Also vimawesome[vimawesome.com] is a beautiful source for Vim plugins.

We also need to install the Silver Searcher for the Ag command to run (vim-ag plugin to work)

```
brew install the_silver_searcher
```

***Troubleshooting***

If you are getting the following error:

```
ycm_client_support.[so|pyd|dll] and ycm_core.[so|pyd|dll] not detected; you need to compile YCM before using it. Read the docs!
Press ENTER or type command to continue
```
Install 'You Complete Me' plugin as mentioned in https://github.com/Valloric/YouCompleteMe#mac-os-x-installation

##Ctags

It is recommended to go through [this link] (https://gist.github.com/nazgob/1570678) to install ctags. Also installing exubrent-ctags will help the `tagbar` plugin to work properly.

Installing [jsctags](https://github.com/ramitos/jsctags) helps tern to pick up tags easily.
