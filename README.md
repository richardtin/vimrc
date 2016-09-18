# richardtin's vimrc

Author: [richardtin](https://github.com/richardtin)

## ONE-STEP INSTALL

Use curl (for Mac OS X):

```
curl -o - https://raw.githubusercontent.com/richardtin/vimrc/master/auto-install.sh | sh
```

or wget (for most UNIX platforms):

```
wget -O - https://raw.githubusercontent.com/richardtin/vimrc/master/auto-install.sh | sh
```

## INSTALL & UPGRADE PLUGIN BUNDLES

To install a new plugin as a git submoudle, type the following commands.

```
cd ~/.vim
git submodule add [GIT-REPOSITORY-URL] bundle/[PLUGIN-NAME]
```

## PLUGINS

- [vim-colorschemes]: a collection of colorschemes for vim
- [vim-pathogen]: manage your runtime path

[vim-colorschemes]: https://github.com/flazz/vim-colorschemes.git
[vim-pathogen]: https://github.com/tpope/vim-pathogen.git
