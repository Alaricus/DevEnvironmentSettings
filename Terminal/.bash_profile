# START personal quality of life stuff
    alias ls='ls -la'

    source ~/git-completion.sh

    git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\[\1]/'
    }

    export PS1="\[\033[40;37m\]\w \[\033[0;49;93m\]\$(git_branch)\[\033[00m\] \[\033[35m\]𝝮\[\033[00m\] "

    # Old version with no brackets and space in front of branch name
    # git_branch() {
    #   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
    # }

    # Old version with username and host and no background and no space at the end of path
    # export PS1="\u@\h \[\033[0;37m\]\w\[\033[0;49;93m\]\$(git_branch)\[\033[00m\] => "
# END personal quality of life stuff
