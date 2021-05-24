#!/bin/bash

export PATH="$PATH:/snap/bin" 

neovidecloseterminal () {
	neovide "$@" && alacritty & 
	exit
}

alias spt="$HOME/Scripts/launchspt.sh"
alias ls="ls -a"
alias nvim="neovidecloseterminal"

