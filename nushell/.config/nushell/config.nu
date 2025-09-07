# Nushell configuration file

# Settings

$env.EDITOR = "nvim"
$env.VISUAL = "nvim"

$env.PROMPT_INDICATOR = " "
$env.PROMPT_COMMAND_RIGHT = ""
$env.PROMPT_MULTILINE_INDICATOR = ""
$env.PROMPT_COMMAND = ""

$env.config = {
	show_banner: false
	buffer_editor: "nvim"
	highlight_resolved_externals: true
}

# Environment variables

$env.TRANSIENT_PROMPT_COMMAND = null
$env.SSH_AUTH_SOCK = $"($env.XDG_RUNTIME_DIR)/ssh-agent.socket"

# Source external configuration files

source ~/.config/nushell/alias.nu
source ~/.config/nushell/completions-jj.nu
source ~/.config/nushell/private.nu
source ~/.zoxide.nu

# Startup programs

sleep 0.1sec
fastfetch
source $"($nu.home-path)/.cargo/env.nu"

# Starship support
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
