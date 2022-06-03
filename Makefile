.PHONY: all install update


SHELL := /bin/bash


DOTFILES_REPO=dotfiles
DOTFILES_SYSTEM=~

WALLPAPERS_REPO=wallpapers
WALLPAPERS_SYSTEM=~/.wlp


install: install_wlp install_dot

install_dot: $(DOTFILES_REPO)
	@cd $(DOTFILES_REPO) && rsync -avz --relative . $(DOTFILES_SYSTEM) && cd ..

install_wlp: $(WALLPAPERS_REPO)
	@cp -r $(WALLPAPERS_REPO)/* $(WALLPAPERS_SYSTEM)


update: update_wlp update_dot

update_wlp: $(WALLPAPERS_SYSTEM)
	@cp -r $(WALLPAPERS_SYSTEM)/* $(WALLPAPERS_REPO)

update_dot: $(DOTFILES_REPO)
	@for FILE in $$(cd $(DOTFILES_REPO) && find . -type f && cd ..); do \
		cp $(DOTFILES_SYSTEM)/$$FILE $(DOTFILES_REPO)/$$FILE; \
		echo Updating $$FILE...; \
	done;

