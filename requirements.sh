set -e
set -x

# ----------------------------------------------------------------------------
# Install brew with requirements
# ----------------------------------------------------------------------------

case $(uname | tr '[:upper:]' '[:lower:]') in
  linux*)
    which apt && sudo ./scripts/linuxbrew/debian/requirements.sh
    which yum && sudo ./scripts/linuxbrew/redhat/requirements.sh
    ./scripts/linuxbrew/install.sh
    ;;
  darwin*)
    which brew || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ;;
  msys*)
    echo "unsupported OS"
    ;;
  *)
    echo "unsupported OS"
    ;;
  esac

