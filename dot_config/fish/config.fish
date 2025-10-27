if status is-interactive
    # Commands to run in interactive sessions can go here
end
starship init fish | source
fish_add_path ~/.local/bin

/var/home/razvan/.local/bin/mise activate fish | source # added by https://mise.run/fish
