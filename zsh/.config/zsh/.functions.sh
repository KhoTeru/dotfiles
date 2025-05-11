mkz()
{
        mkdir -p "$1" && z "$1"
}

mkt()
{
        mkdir {nmap,content,exploits,scripts}
}

cheat()
{
        curl -sS https://cheat.sh/"$1"
}

vd()
{
        cd "$1"
        nvim "$1"
        cd - > /dev/null
}

mpt()
{
        mpv --profile=streamlink "https://twitch.tv/$1"
}
