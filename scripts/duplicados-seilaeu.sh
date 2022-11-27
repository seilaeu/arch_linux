awk '!a[$0]++'  .bash_history > .bash_history.tmp && mv .bash_history.tmp .bash_history
