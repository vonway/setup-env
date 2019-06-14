# alias
alias h=history
alias +='pushd .'
alias -='popd'
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias h4='history | grep '
alias l='ls -alF'
alias la='ls -la'
alias ll='ls -l'
alias scr='screen'
alias scrls='screen -ls'
alias scrnew='screen -S '
alias scrto='screen -r '
alias synoff='pkill -e synergys'
alias synon='synergys --daemon --restart --config ~/etc/synergy.conf'
alias tmls='tmux ls'
alias tmnew='tmux new -s '
alias tmto='tmux attach -t '

# postgresql
export PATH=$PATH:/usr/local/pgsql/bin
export LD_LIBRARY_PATH=/usr/local/pgsql/lib
export MANPATH=/usr/local/pgsql/man:$MANPATH
alias startdb='postmaster -D /usr/local/pgsql/data > logfile 2>&1 &'
alias stopdb='pg_ctl -D /usr/local/pgsql/data stop'
alias sdb='pg_ctl -D /usr/local/pgsql/data start'

# ctags & cscope
alias mytags="ctags -f ~/my.tags -R `pwd`"
alias mycscope="find `pwd` -name *.[ch] -o -name *.cpp -o -name *.cxx > ~/cscope.files && cscope -bRq -i ~/cscope.files && mv cscope.* ~"

