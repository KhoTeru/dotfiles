#!/bin/sh

if [ "$XDG_SESSION_TYPE" = "wayland" ]; then
        TOGGLE=toggleGammastep
        STATE=$XDG_STATE_HOME/gammastep
else
        TOGGLE=toggleRedshift
        STATE=$XDG_STATE_HOME/redshift
fi

checkRedlight()
{
        cat $STATE 2>/dev/null || echo "[!] No state file available. Create one with redlight.sh toggle!"
}

toggleGammastep()
{
        if [ -z $(pgrep -x gammastep) ]
        then
                gammastep &
                echo '{"text": "<span face=\"Font Awesome 6 Free Solid\"></span>  On", "class": "on"}' > "$STATE"
        else
                pkill gammastep
                echo '{"text": "<span face=\"Font Awesome 6 Free Solid\"></span>  Off", "class": "off"}' > "$STATE"
        fi
}

toggleRedshift()
{
        if [ -z $(pgrep -x redshift) ]
        then
                redshift &
                echo '%{F#ef9a9a}%{T4}  %{T-}On%{F-}' > "$STATE"
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
                echo "Select an option from below as a second argument:\n\tcheck\n\ttoggle"
                exit 1
esac
