#!/usr/bin/env pwsh

# Installs the symbolic links for the programs that come with these dotfiles on windows.

# Classic powershell and the powershell 7 profile
# ! This should have been already linked via the tutorial, so no need for duplication here.
# Comment in, if you're using these script as a standalone.
Remove-Item -path "$env:USERPROFILE/Documents/WindowsPowerShell" -recurse
Remove-Item -path "$env:USERPROFILE/Documents/PowerShell" -recurse
New-Item -Path "$env:USERPROFILE/Documents/WindowsPowerShell" -ItemType Junction -Value "$env:DOTFILES/common/powershell"
New-Item -Path "$env:USERPROFILE/Documents/PowerShell" -ItemType Junction -Value "$env:DOTFILES/common/powershell"

# gitconfig
New-Item -Path $HOME/.gitconfig -ItemType SymbolicLink -Value "$env:DOTFILES/common/git/.gitconfig"
