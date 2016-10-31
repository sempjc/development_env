
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

# Desing URL
bby_design_desk=$bby"/app/design/frontend/bestbuy/enterprise/"
bby_design_mob=$bby"/app/design/frontend/bestbuy/mobile/"

# Skin URL
bby_skin_mob=$bby"/skin/frontend/bestbuy/mobile/css"
bby_skin_desk=$bby"/skin/frontend/bestbuy/default"

#Start the compilation of style and keep watching for change

# Node-Sass with watch and Source Map
alias bby_node-sass-w-desk="cd $bby_skin_desk;node-sass -w --source-map true scss/styles.scss css/styles.css"
alias bby_node-sass-w-mob="cd $bby_skin_mob; node-sass -w --source-map true iphone.scss iphone.css;"

# Node-Sass single compile with Source Map
alias bby_sass_desk="cd $bby_skin_desk; node-sass --source-map true scss/styles.scss css/styles.css"
alias bby_sass_mob="cd $bby_skin_mob; node-sass --source-map true iphone.scss iphone.css"











# Setting Bash 's Prompt to display
export PS1="\e[0;32m\\@  \\w:\e[m \n\\$"





# Cool things on bash

alias sju_weather='curl http://wttr.in/san%20juan,PR'

