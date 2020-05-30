# ciehanski's dotfiles

- Terminal: [`alacritty`](https://github.com/alacritty/alacritty)
- Shell: [`zsh`](https://www.zsh.org/)
  - [`ohmyzsh`](https://github.com/ohmyzsh/ohmyzsh)
  - [`p10k`](https://github.com/romkatv/powerlevel10k)
- Multiplexer: [`tmux`](https://github.com/tmux/tmux)
- Window Manager: [`yabai`](https://github.com/koekeishiya/yabai)
- Shortcuts: [`skhd`](https://github.com/koekeishiya/skhd)
- Editor: [`nvim`](https://github.com/neovim/neovim)

![ciehanski's dotfiles screenshot](https://github.com/ciehanski/dotfiles/blob/master/screenshot.png?raw=true)

## Installation:

First, clone this repository like so:

```bash
$ git clone --recurse-submodules https://github.com/ciehanski/dotfiles ~/.dotfiles
```

Next, we'll create the needed symlinks. I personally use GNU [`stow`](https://www.gnu.org/software/stow/) for this. Run the following command for each folder within this repository:

```bash
$ cd ~/.dotfiles
$ stow -vt ~ alacritty
$ stow -vt ~ coc
...
```

Now, let's install the necessary [Brew](https://brew.sh/) packages:

```bash
$ cd ~/.dotfiles
$ brew bundle install
```
