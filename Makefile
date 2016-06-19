.PHONY: all bin etc

DOTPATH  := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
DOTFILES := $(wildcard etc/.??*)

all: etc bin vim certs


# Install dotfiles and binfiles
etc: $(foreach F, $(DOTFILES), _install/$F)
bin:
	/bin/ln -sfh $(DOTPATH)/bin $(HOME)/.bin


# Vim extra bundles
vim:
ifneq "$(wildcard $(HOME)/.vim/bundle/Vundle.vim )" ""
	cd $(HOME)/.vim/bundle/Vundle.vim && git pull
else
	git clone https://github.com/VundleVim/Vundle.vim.git $(HOME)/.vim/bundle/Vundle.vim
endif
	vim +PluginInstall +qall

# SSL certs hashes for openssl
certs:
	cd $(HOME)/.certs.d && cert.hashes

# Meta install and uninstall targets
_install/%:
	/bin/ln -sf $(DOTPATH)/$* $(HOME)/
_uninstall/%:
	# if [ -L ~/$* -a "$$(readlink ~/$*)" = "${DIR}/$*${EXT}" ]; then rm -r ~/$*; fi
