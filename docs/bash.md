# Bash

Move `config/bash/.bashrc` to your home directory. Change all the necessary PATH variables in this file to have the correct username.

Move all of the files in `fedora-38-configuration/config/bash/bin/` to `~/bin/` if you would like to use several helpful scripts. Otherwise, skip or add `fedora-38-configuration/config/bash/bin/` to your PATH in `.bashrc`.

## Turn Off Bash Case Sensitivity

Run the following in Terminal to turn off case sensitivity in Bash, and restart the shell:

```
echo 'set completion-ignore-case On' | sudo tee -a /etc/inputrc
```

Source: https://askubuntu.com/questions/87061/can-i-make-tab-auto-completion-case-insensitive-in-bash

## Show password asterisks in terminal

This section will show asterisks when typing out passwords in the terminal. Run the following command to open the visudo config:

```
sudo visudo
```

Then, place the second line of the follow code directly after the first line as follows to show asterisks when typing passwords:

```
Defaults    env_reset
Defaults    pwfeedback
```
