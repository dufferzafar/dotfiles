
# .dotfiles

My configuration for various tools.

## Usage

```bash

cd ~
git clone http://github.com/dufferzafar/dotfiles .dotfiles

cd .dotfiles
git submodule update --init --recursive

sudo bash -x bootstrap.sh
```

## Keyboard Shortcuts

_Mostly for my reference_

* fzf:
    - `Ctrl + R`: Reverse search command history
    - `Ctrl + P`: File list with preview pane
    - `Alt + G`: Git commit graph / list

## Todo

* An alias that reminds me of some aliases
  - Suggest a random alias

* `~/.spcrc`
  - My config files for supercat
    + Python Tracebacks

* firefox
  - `userChrome.css` etc.
  - ShadowFox
  - A script that can backup extensions
    + `~/.mozilla/firefox/*.default/addons.json`

* fzf
  - Ctrl + P could use the scope.sh script from ranger
  - Move $PATH etc to .zshenv ?
  `alias j="cd (cat ~/Library/autojump/autojump.txt | sort -nr | awk '{print \$2}' | fzf +s)"`

  - Slow load times
    + https://github.com/junegunn/fzf/wiki/examples
    + https://carlosbecker.com/posts/speeding-up-zsh
    + https://kev.inburke.com/kevin/profiling-zsh-startup-time
    + https://bennycwong.github.io/post/speeding-up-oh-my-zsh
    + https://github.com/xcv58/prezto/tree/master/modules/lazy-load
    + https://superuser.com/questions/236953/zsh-starts-incredibly-slowly
    + http://blog.santosvelasco.com/2011/04/22/improving-oh-my-zsh-startup-time
    + http://blog.patshead.com/2011/04/improve-your-oh-my-zsh-startup-time-maybe.html

* tigrc
    * http://jonas.nitro.dk/tig/tigrc.5.html
    * https://github.com/jonas/tig/blob/master/tigrc
    * https://github.com/jtheoof/dotfiles/blob/master/.tigrc

* mpv configurations & scripts
  - https://github.com/TheAMM/mpv_crop_script/releases
  - https://github.com/TheAMM/mpv_thumbnail_script/releases
  - https://github.com/jonniek/mpv-scripts/blob/master/appendURL.lua
  - https://github.com/mpv-player/mpv/blob/master/TOOLS/lua/autoload.lua
  - https://github.com/zc62/mpv-scripts/blob/master/autoloop.lua
  - https://github.com/mpv-player/mpv/issues/4738#issuecomment-321298846

* Terminator Config File
    * \~/.config/terminator/config

* LazyLoad zsh subscripts like gvm, rvm, nvm

* Make `gio` work offline
  * cache responses in ~/.cache/gio ?
  * when connected to internet prefer online stuff

* Will the hub completion script need to be updated? How?

* Vim
  * ~/.vim/ftdetect/markdown.md
  * au BufNewFile,BufRead \*.md setf markdown

* Perform cleanup, test etc.

* Add a way to uninstall!

* Use `antigen` to load oh-my-zsh stuff
  * use zsh profiling to see where the bottleneck is
  * and see if it makes sense to switch to antigen

* Better history
  - https://github.com/larkery/zsh-histdb
  - Stores everything in a

* Lazy load npm/rvm/gvm commands
  - As soon as a command like `npm` etc are run, the corresponding shell file gets loaded
  - Still keep the manual loading functions around though

* [nbeaver/lesskey](https://github.com/nbeaver/lesskey)
* [nbeaver/bashrc-public](https://github.com/nbeaver/bashrc-public)
* [ingydotnet/git-hub](https://github.com/ingydotnet/git-hub)
* [cxreg/smartcd](https://github.com/cxreg/smartcd)
* [kennethreitz/autoenv](https://github.com/kennethreitz/autoenv)

https://github.com/aziz/dotfiles/blob/master/templates/provisioning/ubuntu/fonts.sh

* A command that forgets zsh histories
  - Beginning with something

## Prompt

* [sindresorhus/pure](https://github.com/sindresorhus/pure)
* [olivierverdier/zsh-git-prompt](https://github.com/olivierverdier/zsh-git-prompt)
* [bhilburn/powerlevel9k](https://github.com/bhilburn/powerlevel9k)

## Faster loading

* https://carlosbecker.com/posts/speeding-up-zsh/
  - `zsh -i -c -x exit`
    + Large debug log
    + Issues found
      * Completions for commands that I don't even use

  - Pull requests
    + https://github.com/caarlos0/dotfiles/pull/189
    + https://github.com/caarlos0/dotfiles/pull/190

  - rbenv, pyenv etc
  - Remove some if statements?
  - Replace multiple export PATH calls with one?

* https://blog.jonlu.ca/posts/speeding-up-zsh

* https://gist.github.com/ctechols/ca1035271ad134841284

## Recurring Tasks

* Merge with latest ranger configuration
  - http://github.com//ranger

* Prune zsh history
  - Do *not* delete any thing
    + Just move it to a separate file?

  - Remove personal stuff?
  - Commands with URLs?
  - Commands that are seldom used?
  - `^subl *`
  - `^youtube-dl *`

  - Commands
    + `sed -i '/string/d' .bash_history`
    + `grep -vf wordsToExcludeFile myfile.txt`
    + https://unix.stackexchange.com/questions/241623/delete-row-if-two-patterns-are-found-in-the-same-line


## Issues

* The server doesn't have a gnome-keyring-handler
* It doesn't even need sublime, nautilus stuff!
