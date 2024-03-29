#!/usr/bin/env zsh

#Pro tips

alias please='_ $(fc -ln -1)'

#Config files
alias eV="$EDITOR ~/.dotfiles/vim/.vimrc"
alias eN="$EDITOR ~/.dotfiles/nvim/.config/nvim/init.vim"
alias eZ="$EDITOR ~/.dotfiles/zsh/.zshrc"
alias sZ="source ~/.zshrc"
alias eA="$EDITOR ~/.dotfiles/awesome/.config/awesome/rc.lua"

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
alias stage_k8s="ssh -L 8443:internal-api-bo-stage1-cluster-k8s-blui74-2123013281.eu-west-1.elb.amazonaws.com:443 bastion-dev"
alias live_k8s="ssh -L 8443:internal-api-backoffice-live-k8s-l-7kkfi8-451735246.eu-west-1.elb.amazonaws.com:443 bastion-live"
