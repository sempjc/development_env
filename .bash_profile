
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#   My custom Setup :)

#  Make Vim my primary Editor

export EDITOR="vim"


# Variable path to local directories

home1="/vagrant/"

# Xampp
xampp="/vagrant/xampp"
htdocs="/vagrant/xampp/htdocs"

# Variable Path to magento-playground
mage_play=$htdocs"/magento-playground"
mage_play_def_theme=$mage_play"/skin/frontend/playground/default"

# Variable Path to BestBuy proyect

bby="/vagrant/xampp/htdocs/best_buy_mx"
bby_mob_theme=$bby"/skin/frontend/bestbuy/mobile/css"
bby_desk_theme=$bby"/skin/frontend/bestbuy/default"

#Todo pendiente de trabajo
#Start the compilation of style and keep watching for change
alias bby_sassw_default="cd $bby_desk_theme; sass --watch scss/styles.scss:css/styles.css"
alias bby_sassw_mob="cd $bby_mob_theme; sass --watch iphone.scss:iphone.css;"

alias bby_sass_default="cd $bby_desk_theme; sass scss/styles.scss:css/styles.css"
alias bby_sass_mob="cd $bby_mob_theme; sass iphone.scss:iphone.css"











# Setting Bash 's Prompt to display
export PS1="\e[0;32m\\@  \\w:\e[m \n\\$"





# Cool things on bash

alias sju_weather='curl http://wttr.in/san%20juan,PR'

