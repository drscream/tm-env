# tm-env, or my personal new dot environment

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

## usage

Clone the repository to `~/.tm-env`. If you like to use another directory some
file changes are required.

    git clone https://github.com/drscream/tm-env.git ~/.tm-env

To initialize all files, you should symlink it to the home. For that there is
a good old bash script. Be careful, it's not finished!

    cd ~/.tm-env
	./tm-env -i public git

For the private use, i've also a git repository. But it uses
[git-encrypt](/shadowhand/git-encrypt) to have a secure repository. You could
also use the `tm-env` script.

    cd ~/.tm-env
	./tm-env -i private git
