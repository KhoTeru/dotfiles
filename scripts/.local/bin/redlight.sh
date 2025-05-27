#!/bin/sh

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
                TOGGLE=toggleWaylight
                STATE="$XDG_STATE_HOME"/waylight
else
        TOGGLE=toggleRedshift
        STATE="$XDG_STATE_HOME"/redshift
fi

checkRedlight()
{
        cat $STATE 2>/dev/null || echo "[!] No state file available. Create one with redlight.sh toggle!"
}

toggleWaylight() {
        ! pidof hyprsunset >/dev/null && echo "[!] hyprsunset isn't running! Exiting..." && exit 1

        if cat $STATE |grep "Off" >/dev/null ; then
                hyprctl hyprsunset temperature 3600 >/dev/null &&
                        echo '{"text": "<span size=\"large\"></span> <span face=\"Inter\">On</span>"}' > "$STATE"
        else
                hyprctl hyprsunset identity >/dev/null &&
                        echo '{"text": "<span size=\"large\"></span> <span face=\"Inter\">Off</span>", "class": "off"}' > "$STATE"
        fi
        pkill -SIGRTMIN+1 waybar
}

toggleRedshift()
{
        if [ -z $(pgrep -x redshift) ]
        then
                echo '%{F#ef9a9a}%{T4}  %{T-}On%{F-}' > "$STATE"
                kitty
                redshift
        else
                pkill redshift
                echo '%{F#5e81ac}%{T4}  %{T-}Off%{F-}' > "$STATE"
        fi
}

case $1 in
        check)
                checkRedlight
                ;;
        toggle)
                $TOGGLE
                ;;
        *)
                echo -e "Select an option from below as a second argument:\n\tcheck\n\ttoggle"
                exit 1
esac
