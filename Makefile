.PHONY: all bin dotfiles

all: bin dotfiles

bin:
	if [ ! -d $(HOME)/bin ]; then \
		mkdir $(HOME)/bin; \
	fi
	# add aliases for things in bin
	for file in $(shell find $(CURDIR)/bin -type f -not -name "*-backlight"); do \
		f=$$(basename $$file); \
		#sudo ln -sf $$file /usr/local/bin/$$f; \
		ln -sf $$file $(HOME)/bin/$$f; \
	done

dotfiles:
	# add aliases for dotfiles
	for file in $(shell find $(CURDIR) -name ".*" -not -name ".gitignore" -not -name ".travis.yml" -not -name ".git" -not -name ".*.swp" -not -name ".gnupg"); do \
		f=$$(basename $$file); \
		ln -sfn $$file $(HOME)/$$f; \
	done; \
	ln -fn $(CURDIR)/gitignore $(HOME)/.gitignore;
