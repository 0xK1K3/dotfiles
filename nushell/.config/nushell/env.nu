# env.nu
#
# Installed by:
# version = "0.106.1"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.

# Initialize zoxide
zoxide init nushell --cmd cd | save -f ~/.zoxide.nu

# pnpm
$env.PNPM_HOME = "/home/k1k3/.local/share/pnpm"
$env.PATH = ($env.PATH | split row (char esep) | prepend $env.PNPM_HOME )
# pnpm end

# Add ~/.local/bin to PATH for uv and other local binaries
$env.PATH = ($env.PATH | split row (char esep) | prepend $"($env.HOME)/.local/bin" )

# ROCm
$env.ROCM_PATH = "/opt/rocm"
$env.PATH = ($env.PATH | split row (char esep) | prepend $"($env.ROCM_PATH)/bin" )
