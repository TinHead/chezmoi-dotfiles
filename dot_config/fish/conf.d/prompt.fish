function fish_prompt
    if [ $PWD = $HOME ]
        set directory '~'
    else
        set directory (basename $PWD)
    end

    if test -n "$CONTAINER_ID"
        # source (/usr/local/bin/starship init fish --print-full-init | psub)
        echo -n "[$CONTAINER_ID] "
    else
        # source (/usr/bin/starship init fish --print-full-init | psub)
    end

    set_color $fish_color_cwd
    echo -n $directory
    set_color normal
    echo -n " \$ "
end
