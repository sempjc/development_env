
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#   My custom Setup :)

#  Make Vim my primary Editor

export EDITOR="vim"



# Variable Path to BestBuy proyect

bby="/vagrant/xampp/htdocs/best_buy_mx"

# Setting Bash 's Prompt to display
export PS1="\e[0;32m\\@  \\w:\e[m \n\\$"





# Cool things on bash

alias sju_weather='curl http://wttr.in/san%20juan,PR'

