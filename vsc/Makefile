.PHONY: clean

clean:
	if [ -f "./extensions.txt" ]; then rm extensions.txt; fi;

freeze-extensions:
	code --list-extensions > extensions.txt

install-extensions:
	cat extensions.txt | xargs -L 1 code --install-extension

# Credit
# https://stackoverflow.com/questions/35929746/automatically-install-extensions-in-vs-code#58643452