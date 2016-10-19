# alias
alias h=history

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

