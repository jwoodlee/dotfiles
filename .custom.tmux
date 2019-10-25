######################
### DESIGN CHANGES ###
######################

# loud or quiet?
set -g visual-activity off
set -g visual-bell off
set -g visual-silence off
setw -g monitor-activity off
set -g bell-action none

#  modes
setw -g clock-mode-colour colour5
setw -g mode-style 'fg=colour1 bg=colour18 bold'

# panes
set -g pane-border-style 'fg=colour19 bg=colour0'
set -g pane-active-border-style 'bg=colour0 fg=colour9'

# statusbar
#set -g status-position bottom
#set -g status-justify left
#set -g status-style 'fg=colour137 dim'
#set -g status-left ''
#set -g status-right '#[fg=colour233] %d/%m #[fg=colour233,bg=colour8] %H:%M:%S '
#set -g status-right-length 50
#set -g status-left-length 20

#setw -g window-status-current-style 'fg=colour1 bg=colour19 bold'
#setw -g window-status-current-format ' #I#[fg=colour249]:#[fg=colour255]#W#[fg=colour249]#F '

#setw -g window-status-style 'fg=colour9 bg=colour18'
#setw -g window-status-format ' #I#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F '

#setw -g window-status-bell-style 'fg=colour255 bg=colour1 bold'


# configure maximum status-line length
set -g status-left-length '100'
set -g status-right-length '100'
# set pane border colors
set -g pane-border-style fg='colour239'
set -g pane-active-border-style fg='colour103'
# set message colors
set -g message-style bg='colour230',fg='colour227'
set -g message-command-style bg='colour230'
# configure status-line core
set -g status-style bg='colour236','none'
set -g status-left-style 'none'
set -g status-left '#(tmux-status left `tmux display -p "#{client_width}"`)'
set -g status-right-style 'none'
set -g status-right '#(tmux-status right `tmux display -p "#{client_width}"`)'
# configure window list status-line component
set -g status-justify 'left'

setw -g window-status-current-style 'fg=colour200 bg=colour41 bold'
setw -g window-status-current-format '    #[fg=colour200][ #[fg=colour160]#I#[fg=colour165]:#[fg=color224]#W#[fg=colour200]#F#[fg=colour200] ]    '

setw -g window-status-style 'fg=colour9 bg=colour18'
setw -g window-status-format ' #I#[fg=colour237]:#[fg=colour250]#W#[fg=colour244]#F '



setw -g window-status-separator ''








# messages
set -g message-style 'fg=colour232 bg=colour16 bold'

# Enable mouse mode (tmux 2.1 and above)
set -g mouse on
