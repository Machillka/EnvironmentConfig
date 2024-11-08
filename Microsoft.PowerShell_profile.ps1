# Set Proxy
$env:HTTPS_PROXY="http://127.0.0.1:2080"
$env:HTTP_PROXY="http://127.0.0.1:2080"

# Set Theme
# oh-my-posh init pwsh --config "$(scoop prefix oh-my-posh)\themes\material.omp.json" | Invoke-Expression

Invoke-Expression (&starship init powershell)
$ENV:STARSHIP_CONFIG="$HOME\.config\starship.toml"
# Set Zoxide
Invoke-Expression (& { (zoxide init powershell | Out-String) })

# Import Modules
Import-Module posh-git
Import-Module PSReadLine

# Set PSReadLine
# Set-PSReadlineKeyHandler -Key Tab -Function Complete
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo
Set-PSReadLineOption -PredictionSource History
