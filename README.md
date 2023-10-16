# Dotfiles Repository

This repository contains my personal dotfiles, which are configuration files and scripts that customize various aspects of my development environment on Linux.

## Configuration Highlights

- **Alacritty**: Terminal emulator configuration for a customized and efficient terminal experience.

- **Containers**: Configuration files related to containerization and container management.

- **Git**: Git configuration for enhancing your version control workflow.

- **GNUPG**: GnuPG configuration, for encryption and key management.

- **K9s**: Configuration for the K9s Kubernetes CLI that improves Kubernetes cluster management.

- **Mako**: Configuration for the Mako notification daemon.

- **ncspot**: Configuration for ncspot, a Spotify terminal client.

- **Sway**: Configuration for the Sway tiling window manager, for desktop/window management.

- **Systemd**: Configuration files for custom user-level systemd services.

- **Tmux**: Configuration for the Tmux terminal multiplexer.

- **Waybar**: Configuration for Waybar, a customizable status bar for Sway.

- **Z**: Configuration files and a script for the "z" command-line tool, for directory navigation.

- **Zsh**: Zsh configurations, including aliases, completions, exports, functions, and more.

- **Scripts**: Various utility scripts that enhance the command-line experience.

- **Grubcmd**: My custom grub kernel params.

- **Package_list**: Listed packages for my system install.

### Submodules

#### Zsh Autosuggestions
- **Path**: `zsh/zsh-autosuggestions`
- **URL**: [https://github.com/zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- **Description**: This submodule includes the Zsh Autosuggestions plugin, which enhances your Zsh shell by providing intelligent command auto-completion suggestions as you type.

#### Fast Syntax Highlighting
- **Path**: `zsh/fsh`
- **URL**: [https://github.com/zdharma-continuum/fast-syntax-highlighting](https://github.com/zdharma-continuum/fast-syntax-highlighting)
- **Description**: This submodule contains the Fast Syntax Highlighting plugin for Zsh. It adds syntax highlighting to your shell, making it easier to read and understand command input and output.

### .gitignore

#### Excluded Tags
- **Pattern**: `z/**`
- **Description**: This pattern in the `.gitignore` file specifies that all files and directories under the "z" directory and its subdirectories are excluded from version control.

#### Exception for z/z.sh
- **Pattern**: `!z/z.sh`
- **Description**: Despite excluding everything under "z," this exception allows the inclusion of the specific file `z/z.sh` in version control. This file is not ignored and is tracked by Git.

## Usage

Feel free to use and modify these dotfiles to suit your needs. It's recommended to symlink the configuration files from this repository to their respective locations in your home directory. Please be cautious and backup your existing configuration files before overwriting them.

## Credits

These dotfiles were curated and customized by [Célio da Silva Júnior]. Feel free to reach out for any questions or suggestions.
