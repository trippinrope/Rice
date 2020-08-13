#!b/in/sh
###########################################
#    ___       ___       ___       ___    #
#   /\  \     /\  \     /\  \     /\__\   #
#  /::\  \   _\:\  \   /::\  \   /:/__/_  #
# /::\:\__\ /\/::\__\ /\:\:\__\ /::\/\__\ #
# \/\:\/__/ \::/\/__/ \:\:\/__/ \/\::/  / #
#    \/__/   \:\__\    \::/  /    /:/  /  #
#             \/__/     \/__/     \/__/   #
#                                         #
###########################################


#    ___       ___       ___       ___       ___       ___       ___       ___   
#   /\__\     /\  \     /\__\     /\__\     /\  \     /\__\     /\  \     /\  \  
#  /:/  /    /::\  \   /:/ _/_   /:| _|_   /::\  \   /:/__/_   /::\  \   /::\  \ 
# /:/__/    /::\:\__\ /:/_/\__\ /::|/\__\ /:/\:\__\ /::\/\__\ /::\:\__\ /::\:\__\
# \:\  \    \/\::/  / \:\/:/  / \/|::/  / \:\ \/__/ \/\::/  / \:\:\/  / \;:::/  /
#  \:\__\     /:/  /   \::/  /    |:/  /   \:\__\     /:/  /   \:\/  /   |:\/__/ 
#   \/__/     \/__/     \/__/     \/__/     \/__/     \/__/     \/__/     \|__|  
#
#neofetch --ascii ~/ascii/Rose --ascii_colors 1
#touch ~/ascii_output ; cd ~/ascii && ls | shuf -n1 > ~/ascii_output ; cat (find ~/ascii . -name (cat ~/ascii_output) | head -n 1) ; cd ~ ; rm ascii_output
ccat (ls -d $PWD/ascii/* | shuf -n 1)
#neofetch --source (ls -d $PWD/ascii/* | shuf -n1)
set fish_greeting
set BROWSER Firefox


#    ___       ___       ___       ___       ___       ___       ___   
#   /\  \     /\__\     /\  \     /\  \     /\  \     /\  \     /\  \  
#  /::\  \   /:/  /    _\:\  \   /::\  \   /::\  \   /::\  \   /::\  \ 
# /::\:\__\ /:/__/    /\/::\__\ /::\:\__\ /\:\:\__\ /::\:\__\ /\:\:\__\
# \/\::/  / \:\  \    \::/\/__/ \/\::/  / \:\:\/__/ \:\:\/  / \:\:\/__/
#   /:/  /   \:\__\    \:\__\     /:/  /   \::/  /   \:\/  /   \::/  / 
#   \/__/     \/__/     \/__/     \/__/     \/__/     \/__/     \/__/  
#
# alias vim="vim -S ~/.vimrc"
#export VIMINIT=source $MYVIMRC
#export MYVIMRC='~/.vimrc'  #or any other location you want
alias vim="vim -N -u ~/.vimrc"
alias ..="cd .."
alias aquarium="asciiquarium"
alias c="clear"
alias ca="vim ~/.config/alacritty/alacritty.yml"
alias cco="cd ~/.config/"
alias cf="vim ~/.config/fish/config.fish"
alias ci="vim ~/.config/i3/config"
alias cpicom="vim ~/.config/picom/picom.conf"
alias cpoly="vim ~/.config/polybar/config.ini"
alias cs="vim ~/startpage/config.json"
alias fi=ranger
alias gc="git clone"
alias gv=gvim
alias l=ls
alias Ls="ls -lah | awk '{for(i=2;i<NF;i++)printf"%s",$i OFS;if(NF)printf"%s",$NF;printf ORS}' | column -t"
alias mail=neomutt
alias pac="sudo pacman -S"
alias pipe=pipes.sh
# alias s=sudo
alias smi="sudo make install"
alias sv="sudo vim"
alias v=vim
alias bar="sh polybar_changer"
alias rm="rm -i"
alias k=kak
alias python="/usr/bin/python2.7"

export PATH="$PATH:$HOME/depot_tools"

# nice


#    ___       ___       ___       ___       ___       ___   
#   /\  \     /\  \     /\__\     /\  \     /\  \     /\  \  
#  /::\  \   /::\  \   /:/  /    /::\  \   /::\  \   /::\  \ 
# /:/\:\__\ /:/\:\__\ /:/__/    /:/\:\__\ /::\:\__\ /\:\:\__\
# \:\ \/__/ \:\/:/  / \:\  \    \:\/:/  / \;:::/  / \:\:\/__/
#  \:\__\    \::/  /   \:\__\    \::/  /   |:\/__/   \::/  / 
#   \/__/     \/__/     \/__/     \/__/     \|__|     \/__/  
#
	# Color setup
	set_color black		'#3c3836'
	set_color red		'#db4139'
	set_color green		'#93bd55'
	set_color yellow	'#f7da58'
	set_color blue		'#0ead8d'
	set_color magenta	'#8f3f71'
	set_color cyan		'#79c0c2'
	set_color white		'#d9b773'

	set_color brblack	'#c9c4b7'
	set_color brred		'#fe393f'
	set_color brgreen	'#83fe76'
	set_color bryellow	'#feb84a'
	set_color brblue	'#51a4fe'
	set_color brmagenta	'#cf72fe'
	set_color brcyan	'#a0f0fe'
	set_color brwhite	'#fefbf7'

set fish_color_normal 		white
set fish_color_command 		cyan
set fish_color_quote 		blue
set fish_color_redirection	yellow 
set fish_color_end		yellow
set fish_color_error		brred
set fish_color_param		white
set fish_color_comment		blue
set fish_color_match		yellow
set fish_color_selection	black
set fish_color_search_match	white
set fish_color_operator		yellow
set fish_color_escape		brblack
set fish_color_cwd		blue
set fish_color_autosuggestion	brwhite
set fish_color_user		white
set fish_color_host		brblack
set fish_color_host_remote	green
set fish_color_cancel		brred

function bind_bang
	switch (commandline -t)[-1]
		case "!"
			commandline -t $history[1]; commandline -f repaint
		case "*"
			commandline -i !
	end
end

function bind_dollar
	switch (commandline -t)[1]
		case "!"
			commandline -t ""
			commandline -f history-token-search-backward
		case "*"
			commandline -i '$'
	end
end

function fish_user_key_bindings
	bind ! bind_bang
	bind '$' bind_dollar
end

function fish_prompt --description 'Write out the prompt'
    set -l last_status $status

#       # User
#    set_color $fish_color_user
#        echo -n $USER
#    set_color normal
#
#        echo -n '@'
#
#    # Host
#        set_color $fish_color_host
#    echo -n (prompt_hostname)
#        set_color normal
#
#    echo -n ':'

        # PWD
    set_color $fish_color_cwd
        echo -n (prompt_pwd)
    set_color normal

        __terlar_git_prompt
    fish_hg_prompt
        echo

	if not test $last_status -eq 0
            set_color $fish_color_error
        end

     	echo -n '$ '
        set_color normal
end
 builtin cd "/home/diegoa"
  false
   fish_prompt
