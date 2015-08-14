# README #

dofiles for bash prompt, vim, git settings

## Initialize vim ##

Pull Vundle submodule. 
```bash
git submodule update --init --recursive
```
Install Vundle plugins, 
```vim
:PluginInstall
```

## Initialize bash prompt ##
Add the following line to .bashrc
```bash
source ~/dotfiles/color_prompt.sh
```
