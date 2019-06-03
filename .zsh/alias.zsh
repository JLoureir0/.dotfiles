#!/usr/bin/env zsh

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

#Work

alias docker-mysql-run="docker run -v /home/lex/mysql:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:5.7"
alias docker-mysql="docker start amazing_goodall"
alias docker-udb-run="docker run -d -p 8888:8080 -e "_JAVA_OPTIONS=-Dlogging.level.org.springframework=INFO" udb"
alias docker-udb="docker start nostalgic_thompson"
alias db_stage1_tunnel="ssh -L 3307:mysql.cplqfjuc8rfm.eu-west-1.rds.amazonaws.com:3306 bastion-stage"
alias db_prelive_tunnel="ssh -L 3308:acega-pre-live.cetwe2fvgnkb.eu-west-1.rds.amazonaws.com:3306 bastion-live"
alias db_live_tunnel="ssh -L 3309:cbo-acega-live.cetwe2fvgnkb.eu-west-1.rds.amazonaws.com:3306 bastion-live"
