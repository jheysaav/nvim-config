# Set enviroment variables
set -gx PNPM_HOME "$HOME/.local/share/pnpm"

set -gx PATH "$HOME/.cargo/bin" \
	"$HOME/.deno/bin" \
	$PNPM_HOME \
	"$HOME/go/bin" \
	$PATH

# Setup aliases
source "$HOME/.config/fish/aliases.fish"

# Setup starship
starship init fish | source
