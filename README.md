# DOTMAN - a simple dotfiles manager
## config.toml format
### tables
#### [[dotfile]]
represent a file.  
has following keys.
- name(String)
  - filename
- path([String, String])
  - path whare file. [original file, symlink]
- hook(String)
  - the shell command that you want to execute after deployed the file.
- sofware(String)
  - software that uses the file

