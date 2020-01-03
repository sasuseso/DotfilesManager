# DOTMAN - a simple dotfiles manager
## config.toml format
can parse TOML v0.4.0
### tables
#### [repo]
your github repository that dotfiles are there
#### [[dotfile]]
represent a file.  
has following keys.
- name(String)
  - filename
- path([String, String])
  - path whare file. relative path from cloned repo root. [original file, symlink]
- hook(String)
  - the shell command that you want to execute after deployed the file. you can use the keyword "{\_\*\_FILE\_\*\_}". it's will replace with the filename.
- sofware(String)
  - software that uses the file

#### [disable]
software config files that you dont want to deploy.
- names (an array of String)
  - software names that you wont use.
