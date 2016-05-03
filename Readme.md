
# .dotfiles

My current Ubuntu 14.04 configuration.

## Usage

```bash

cd ~
git clone http://github.com/dufferzafar/dotfiles .dotfiles

cd .dotfiles
git submodule update --init --recursive

sudo bash bootstrap.sh
```

## Todo

* tigrc
    * http://jonas.nitro.dk/tig/tigrc.5.html
    * https://github.com/jonas/tig/blob/master/tigrc
    * https://github.com/jtheoof/dotfiles/blob/master/.tigrc

* mpv configurations & scripts

* Terminator Config File
    * ~/.config/terminator/config

* LazyLoad zsh subscripts like gvm, rvm, nvm

* Make `gio` work offline
  * cache responses in ~/.cache/gio ?
  * when connected to internet prefer online stuff

* Will the hub completion script need to be updated? How?

* Vim
  * ~/.vim/ftdetect/markdown.md
  * au BufNewFile,BufRead *.md setf markdown

* Perform cleanup, test etc.

* Add a way to uninstall!

* Use antigen to load oh-my-zsh stuff
  * use zsh profiling where the bottleneck is, and will it make sense to switch to antigen

* [nbeaver/lesskey](https://github.com/nbeaver/lesskey)
* [nbeaver/bashrc-public](https://github.com/nbeaver/bashrc-public)
* [ingydotnet/git-hub](https://github.com/ingydotnet/git-hub)
* [olivierverdier/zsh-git-prompt](https://github.com/olivierverdier/zsh-git-prompt)
* [cxreg/smartcd](https://github.com/cxreg/smartcd)
* [kennethreitz/autoenv](https://github.com/kennethreitz/autoenv)
* [sindresorhus/pure](https://github.com/sindresorhus/pure)

## Issues

* The server doesn't have a gnome-keyring-handler
* It doesn't even need sublime, nautilus stuff!
