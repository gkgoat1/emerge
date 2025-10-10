cd $(dirname $0)
unshare -pfr --user --mount --kill-child $(which bash) -c '$@; exec $(which bash) -i;' -- $(which gocryptfs) $(pwd) $1 
