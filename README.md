# linux-shell-scripts

## Example shell scripts
These shell-scripts were created to make life a little easier whilst conducting daily porposes.

## Making things even easier
Clone the shell scripts from the github repo: https://github.com/andrephgroen/linux-shell-scripts.git

Create link files in /usr/local/bin on your Linux computer to each of the available shell scripts by doing the following:
```shell
E.g. ln -s <folder-to-shell-scripts>/<shell-script> <preferred_shell_startup_name>
```

Attention:
In case you downloaded a previous version of this repository; you may need to transfer from macOS shell (zsh) to Linux shell (bash)

If the previous is true, then on Linux the following must be adapted:
```shell
1. #!/bin/zsh	-> #!/bin/bash
2. cut -f -w	-> cut -f -d" "
```

## Disclaimer
There's no disclaimer on these shell scripts nor is there a license to it. So feel free to distribute but you are on your own!

## Additional notes
PIP: These shell scripts use the Virtual Environment (venv)

SDKMAN: The loading of the environment is needed as the scripts use a new (background) shell to start with and thus need the environment variables.
