let configs = [
\  "general",
\  "ui",
\  "commands",
\  "plugins",
\  "secrets",
\  "plugin-settings"
\]
for file in configs
  let x = expand("~/.vim/".file.".vim")
  if filereadable(x)
    execute 'source' x
  endif
endfor
