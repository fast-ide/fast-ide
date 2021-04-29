function _accept_line_ontop {
  if [ "x$ONTOP" = "xtrue" ]; then
    tput cup 0 0
    zle redisplay
  fi
  zle .accept-line
}

zle -N accept-line _accept_line_ontop

function ontop
{
  local arg=$1
  if [ "x$arg" = "xon" ]; then
    ONTOP=true
  fi

  if [ "x$arg" = "xoff" ]; then
    ONTOP=false
  fi

  if [ "x$arg" = "xtoggle" ]; then
    ontop_toggle
  fi
}

function ontop_toggle
{
  if [ "x$ONTOP" = "xtrue" ]; then
    ontop off
  else
    ontop on
  fi
}

zle -N ontop_toggle ontop_toggle
bindkey "^X^L" ontop_toggle
