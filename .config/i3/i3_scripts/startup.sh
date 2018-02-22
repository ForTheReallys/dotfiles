#!/bin/sh

function i3_startup() {
    i3-msg 'exec --no-startup-id compton -b --inactive-dim 0.6 --no-fading-openclose' # for transparent backgrounds
    # TODO
    i3_gaps_startup

    # go straight to MY first workspace
    #i3-msg 'workspace $work_term'
    i3-msg 'workspace number 1'
}

function sway_startup() {

}

function i3_gaps_startup() {
    i3-msg 'gaps inner all set 10; gaps outer all set 0'
}

function detect_gaps() {
    out=$(i3-msg "gaps inner current plus 1; gaps inner current minus 1")
    if [[ $out =~ "*ERROR*" ]]; then
        return 0
    fi
    return 1
}
