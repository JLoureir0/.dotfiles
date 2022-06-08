#!/usr/bin/env zsh

#Pro tips

alias please='_ $(fc -ln -1)'

#Config files
alias eV="$EDITOR ~/DotFiles/vimrc"
alias eN="$EDITOR ~/DotFiles/init.vim"
alias eZ="$EDITOR ~/DotFiles/zshrc"
alias sZ="source ~/.zshrc"
alias eA="$EDITOR ~/DotFiles/rc.lua"
alias eX="$EDITOR ~/DotFiles/Xresources"

#Apps
alias hogs="sudo nethogs wlp3s0"
alias e="$EDITOR"
alias neo="nvim"
alias neod="nvim -d"
alias pms="/home/eilkahn/opt/pms/mps"

#Functions
alias v="fvi"
alias c="fcd"
alias f="fop"

alias V="lvi"
alias C="lcd"
alias F="lop"

alias maim-sec="maim -s --format=png /dev/stdout | xclip -selection clipboard -t image/png -i"

#Docker
#MySQL
alias docker-mysql-run="docker run -v /home/lex/mysql:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d --name=mysql-5.7 mysql:5.7"
alias docker-mysql="docker start mysql-5.7"
#UDB
alias docker-udb-run="docker run -d -p 8888:8080 -e "_JAVA_OPTIONS=-Dlogging.level.org.springframework=INFO" --name=udb udb"
alias docker-udb="docker start udb"

#MVN
alias mvi="mvn clean install"
alias mvc="mvn clean compile"
alias mvt="mvn clean test"
alias mvtc="mvn clean test-compile"
alias mvg="mvn clean generate-sources"

#SDK man
alias java-8="sdk use java 8.0.222-zulu"
alias java-10="sdk use java 10.0.2-zulu"
alias java-11="sdk use java 11.0.4-zulu"

#SSH
alias bastion-dev="ssh bastion-dev"
alias bastion-prelive="ssh bastion-prelive"
alias bastion-live="ssh bastion-live"
alias bastion-ci="ssh bastion-ci"
