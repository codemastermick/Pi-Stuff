## Quick access to the mainboard temperature
alias temp=vcgencmd measure_temp
## Use a long listing format ##
alias ll='ls -la'
## Fix that stupid typo
alias cd..='cd ..'
## Create parent directories on demand
alias mkdir='mkdir -pv'
## Make mount human readable
alias mount='mount |column -t'
## Show open ports
alias ports='netstat -tulanp'
## Pass options to free for better output
alias meminfo='free -m -l -t'
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
## this one saved by butt so many times ##
alias wget='wget -c'
## set some other defaults ##
alias df='df -H'
alias du='du -ch'
