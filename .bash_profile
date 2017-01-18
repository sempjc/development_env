
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


#   My custom Setup :)

#  Make Vim my primary Editor

export EDITOR="vim"


#------------------------------------------------------------------------------
# Variable path to local directories

home1="/vagrant/"

# Xampp Url
xampp="/vagrant/xampp"

# htdocs Url
htdocs="/vagrant/xampp/htdocs"
#------------------------------------------------------------------------------




#------------------------------------------------------------------------------
# Variable Path to magento_tut
# Main URL
magento_tut=$htdocs"/magento_tut/"

# Skin Url
magento_tut_skin=$magento_tut"skin/frontend/bookstore/default/"

# Design Url
magento_tut_design=$magento_tut"app/design/frontend/bookstore/default/"
#------------------------------------------------------------------------------





#------------------------------------------------------------------------------
# Variable Path to magento_tut-axalta

magento_tut=$htdocs"/magento_tutorial/"

# Skin Url to AXALTA
magento_tut_axalta_skin=$magento_tut"skin/frontend/axalta/default/"

# Design Url to AXALTA
magento_tut_axalta_design=$magento_tut"app/design/frontend/axalta/default/"

# Node-Sass with watch and Source Map to AXALTA
alias magento_tut-axalta-sass-w-desk="cd $magento_tut_axalta_skin;node-sass -w --source-map true scss/styles.scss css/styles.css"

# Node-Sass single compile with Source Map to AXALTA
alias magento_tut-axalta-sass_desk="cd $magento_tut_axalta_skin; node-sass --source-map true scss/styles.scss css/styles.css"
#------------------------------------------------------------------------------





#------------------------------------------------------------------------------
# Variable Path to BOOKSTORE

magento_tut_bookstore_skin=$magento_tut"skin/frontend/bookstore/default/"

# Design Url to BOOKSTORE
magento_tut_bookstore_design=$magento_tut"app/design/frontend/bookstore/default/"


# Node-Sass with watch and Source Map to BOOKSTORE
alias magento_tut-bookstore-sass-w-desk="cd $magento_tut_bookstore_skin;node-sass -w --source-map true scss/styles.scss css/styles.css"

# Node-Sass single compile with Source Map to BOOKSTORE
alias magento_tut-bookstore-sass_desk="cd $magento_tut_bookstore_skin; node-sass --source-map true scss/styles.scss css/styles.css"
#------------------------------------------------------------------------------





#------------------------------------------------------------------------------
# Variable Path to BESTBUY

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
#------------------------------------------------------------------------------





#------------------------------------------------------------------------------
# Variable Path to AXALTA
axalta=$htdocs"/axalta/"

# Desing and Skin URL
axalta_desing=$axalta"app/design/frontend/axalta/default/"
axalta_skin=$axalta"skin/frontend/axalta/default/"

# Node-sass
alias axalta_sass=" cd $axalta_skin; node-sass --source-map true scss/styles.scss css/styles.css"
alias axalta_sass-w=" cd $axalta_skin; node-sass -w --source-map true scss/styles.scss css/styles.css"

#------------------------------------------------------------------------------




#------------------------------------------------------------------------------
# Variable Path to DORMIMUNDO
dormimundo=$htdocs"/dormimundo/"


# Desing and Skin URL
dormimundo_desing=$axalta"app/design/frontend/dormimundo/default/"
dormimundo_skin=$axalta"skin/frontend/dormimundo/default/"


# Node-sass
alias dormimundo_sass=" cd $axalta_skin; node-sass --source-map true scss/styles.scss css/styles.css"
alias dormimundo_sass-w=" cd $axalta_skin; node-sass -w --source-map true scss/styles.scss css/styles.css"

#------------------------------------------------------------------------------





























# Setting Bash 's Prompt to display
export PS1="\e[0;32m\\@  \\w:\e[m \n\\$"


# Cool things on bash

alias sju_weather='curl http://wttr.in/san%20juan,PR'

