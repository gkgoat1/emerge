cd $(dirname $0)
unshare -pfr --user --mount --kill-child $(which gocryptfs) $(pwd) $1 
