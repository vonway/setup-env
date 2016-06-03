# postgresql
export PATH=$PATH:/usr/local/pgsql/bin
export LD_LIBRARY_PATH=/usr/local/pgsql/lib
export MANPATH=/usr/local/pgsql/man:$MANPATH
alias startdb='postmaster -D /usr/local/pgsql/data > logfile 2>&1 &'
alias stopdb='pg_ctl -D /usr/local/pgsql/data stop'
alias sdb='pg_ctl -D /usr/local/pgsql/data start'


