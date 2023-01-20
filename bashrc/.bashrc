[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias zzz='systemctl suspend'
alias weather='curl wttr.in'
alias spy='netstat -tn'
alias yt='sub_link_count=2 ytfzf -c S'
alias josh='streamlink https://www.twitch.tv/joshimuz best -p mpv --twitch-disable-ads'
alias crucial='streamlink https://www.twitch.tv/crucial best -p mpv --twitch-disable-ads'
