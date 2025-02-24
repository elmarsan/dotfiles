# https://scoop.sh/
scoop install neovim
scoop install lua-language-server

Remove-Item -Path "$env:LOCALAPPDATA\nvim" -Recurse
Copy-Item -Path "./nvim" -Destination "$env:LOCALAPPDATA\nvim" -Recurse