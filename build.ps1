Copy-Item -Path check-wsl.ps1 dist
Copy-Item -Path install-wsl.ps1 build

Invoke-Expression "IntuneWinAppUtil -c build -s install-wsl.ps1 -o dist -q"

