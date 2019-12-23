set -e
set -x

# ----------------------------------------------------------------------------
# Install brew
# ----------------------------------------------------------------------------

case $(uname | tr '[:upper:]' '[:lower:]') in
  linux*)
    ./scripts/linuxbrew/install.sh
    ;;
  darwin*)
    which brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ;;
  *)
    echo "unsupported OS"
    ;;
  esac
