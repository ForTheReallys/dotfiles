#!/bin/sh

i3_startup() {
    #compton -b --inactive-dim 0.6 --no-fading-openclose # for transparent backgrounds
    xrdb ~/.Xresources
    if has_gaps; then
        i3_gaps_startup
    fi

    # go straight to MY first workspace
    i3-msg -q 'workspace number 1'
}

i3_gaps_startup() {
    i3-msg -q 'gaps inner all set 10; gaps outer all set 0'
}

has_gaps() {
    output=$(i3-msg "gaps inner current plus 1; gaps inner current minus 1")
    lines=$(echo $output 2>&1 | wc -l)
    if [ $lines -eq 1 ]; then
        return 0
    fi
    return 1
}

i3_startup
