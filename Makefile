.PHONY: all bin etc certs ssh

DOTPATH  := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))
DOTFILES := $(wildcard etc/.??*)

all: etc bin vim certs ssh


# Install dotfiles and binfiles
etc: $(foreach F, $(DOTFILES), _install/$F)
bin:
	/bin/ln -sfn $(DOTPATH)/bin $(HOME)/.bin


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
	cd $(HOME)/.certs.d && $(HOME)/.bin/cert.hashes

# Compile SSH config file
ssh:
	echo "# Warning this file is created by ssh-compile-config" > $(HOME)/.ssh/config
	cat `ls $(HOME)/.ssh.extra/config.* 2>/dev/null | grep -v .secret || echo /dev/null` $(HOME)/.ssh/config.global >> $(HOME)/.ssh/config

# Meta install and uninstall targets
_install/%:
	/bin/ln -sf $(DOTPATH)/$* $(HOME)/
_uninstall/%:
	# if [ -L ~/$* -a "$$(readlink ~/$*)" = "${DIR}/$*${EXT}" ]; then rm -r ~/$*; fi
