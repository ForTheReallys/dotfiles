# Setting PS1
PS1='%n@%m: %1~%(!.#.$) '
autoload term_has_color
term_has_color && color_prompt=y
#color_prompt=y # uncomment to force color
[ "$color_prompt" = y ] && PS1='%B%F{red}%n@%m%f%b: %B%F{blue}%3~%f%b%(!.#.$) '
unset terminal_has_color

# Setting RPS1
#
