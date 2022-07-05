.PHONY: all install update


SHELL := /bin/bash


DOTFILES_REPO=dotfiles
DOTFILES_SYSTEM=~

WALLPAPERS_REPO=wallpapers
WALLPAPERS_SYSTEM=~/.wlp


install: install_wlp install_dot install_vimplugs

install_dot: $(DOTFILES_REPO)
	cd $(DOTFILES_REPO) && rsync -avz --relative . $(DOTFILES_SYSTEM) && cd ..

install_wlp: $(WALLPAPERS_REPO)
	cp -r $(WALLPAPERS_REPO)/* $(WALLPAPERS_SYSTEM)

install_vimplugs:
	git clone https://github.com/vim-airline/vim-airline ~/.vim/pack/dist/start/vim-airline # airline
	vim -u NONE -c helptags ~/.vim/pack/dist/start/vim-airline/doc -c qall
	git clone https://github.com/vim-airline/vim-airline-themes ~/.vim/pack/dist/start/vim-airline-themes # airline themes
	vim -u NONE -c helptags ~/.vim/pack/dist/start/vim-airline-themes/doc -c qall
	git clone https://github.com/preservim/nerdtree ~/.vim/pack/dist/start/nerdtree # NERDTree
	vim -u NONE -c helptags ~/.vim/pack/dist/start/nerdtree/doc -c qall
	git clone https://tpope.io/vim/fugitive.git ~/.vim/pack/tpope/start/fugitive # vim fugitive
	vim -u NONE -c "helptags ~/.vim/pack/tpope/start/fugitive/doc" -c q

update: update_wlp update_dot

update_wlp: $(WALLPAPERS_SYSTEM)
	cp -r $(WALLPAPERS_SYSTEM)/* $(WALLPAPERS_REPO)

update_dot: $(DOTFILES_REPO)
	for FILE in $$(cd $(DOTFILES_REPO) && find . -type f && cd ..); do \
		cp $(DOTFILES_SYSTEM)/$$FILE $(DOTFILES_REPO)/$$FILE; \
		echo Updating $$FILE...; \
	done;

