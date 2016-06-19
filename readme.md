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
[Box Black](https://gist.github.com/3849042). Here are also two screenshots of
the terminal with `ls` and `vim`.

![tm-env Screenshot of ls](http://up.frubar.net/2307/tm-env_ls.png)

![tm-env Screenshot of vim](http://up.frubar.net/2308/tm-env_vim.png)

## usage

Clone the repository to `~/.tm-env`. If you like to use another directory some
file changes are required.

    git clone https://github.com/drscream/tm-env.git ~/.tm-env

Make is your friend, switch to the new directory and run `make`.

	cd ~/.tm-env
	make
