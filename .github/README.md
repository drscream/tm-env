# · my dotfiles alias tm-env alias doc-env

I desided to create a new dot environment from my old dot environment
and from many new cool environments i found on the internet. I'm not
sure if it is interesting for other people, but i like to share it on
github.

## some random information

I using the bash as shell, i know many people who like to use zsh,
because it "should" be so much easier and intuitive to use. But i
desided to use bash, because it's installed on many servers i 
connected to.

For editing files nothing is better than vim, so there are many
plugins, config parameters in this repository.

## directory structure

There are two folders, one for the public environment i share with
everyone and one for my private personal scripts - that could contain
any secret information. Well this will not be shared on github.

#### `bin`-folder

Contains binary files or scripts that should be executable. It will
be symlinked to `~/.bin`.

#### `etc`-folder

Should contain all my cool environment files from vim, bash, and
something else.

## screenshots

I using MacOS X with Terminal.app and a modified theme called
[Box Black 2014](https://gist.github.com/drscream/abaadf5f3ffdec2c476073cfeb2f61a3).
Here are also two screenshots of the terminal with `ls` and `vim`.

![tm-env Screenshot of ls](https://up.frubar.net/3544/terminal-box-black-2014-ls.png)

![tm-env Screenshot of vim](https://up.frubar.net/3545/terminal-box-black-2014-vim.png)

If you like to use a light background I also have an [Box White
2015](https://gist.github.com/drscream/abaadf5f3ffdec2c476073cfeb2f61a3) theme
but somehow it doesn't work that well with my colours.

![tm-env Screenshot of ls in White Box](https://up.frubar.net/3546/terminal-box-white-2015-ls.png)

## usage

Clone the repository to `~/.tm-env`. If you like to use another directory some
file changes are required.

    git clone https://github.com/drscream/tm-env.git ~/.tm-env

Make is your friend, switch to the new directory and run `make`.

	cd ~/.tm-env
	make
