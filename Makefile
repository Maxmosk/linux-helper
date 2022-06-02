.PHONY: all install update

DOTFILES_REPO=dotfiles
DOTFILES_SYSTEM=~

WALLPAPERS_REPO=wallpapers
WALLPAPERS_SYSTEM=~/.wlp

install: install_wlp install_dot

install_dot: $(DOTFILES_REPO)
	cd $(DOTFILES_REPO) && rsync -avz --relative . $(DOTFILES_SYSTEM) && cd ..

install_wlp: $(WALLPAPERS_REPO)
	cp -r $(WALLPAPERS_REPO)/* $(WALLPAPERS_SYSTEM)

update: update_wlp

update_wlp: $(WALLPAPERS_SYSTEM)
	cp -r $(WALLPAPERS_SYSTEM)/* $(WALLPAPERS_REPO)

