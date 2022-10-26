# Installation dotfiles 

1. `Set-ExecutionPolicy RemoteSigned` (in admin Powershell)
2. Install [chocolatey](https://chocolatey.org): 

    Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.   ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

3. `choco install git`

4. Create a directory for the location you want to install your config to. Then
   set an environment variable ($env:DOTFILES) pointing to it.
    
    New-Item -Path "$env:USERPROFILE/.dotfiles" -ItemType Directory -Force
    $env:DOTFILES = Convert-Path "$env:USERPROFILE/.dotfiles"
    [Environment]::SetEnvironmentVariable("DOTFILES", "$env:DOTFILES", "Machine")
    
5. `git clone https://github.com/IgorSky12/dotfiles $env:DOTFILES` 

6. `. $env:DOTFILES/install/symlink.ps1`
