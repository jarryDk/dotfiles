# dotfiles

dotfiles I found handy.

## requirement

```console
sudo dnf install python3-pygments
```

**To install:**

```console
$ make
```

**To customize:**

Save env vars, etc in a `.extra` file, that looks something like
this:

```bash
###
### Git credentials
###

GIT_AUTHOR_NAME="Your Name"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="email@you.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
GH_USER="nickname"
git config --global github.user "$GH_USER"

###
### Gmail credentials for mutt
###
export GMAIL=email@you.com
export GMAIL_NAME="Your Name"
export GMAIL_FROM=from-email@you.com
```

# Links

[Jess Frazelle - dotfiles - github.com](https://github.com/jessfraz/dotfiles)
[Ryan Tomayko - dotfiles - github.com](https://github.com/rtomayko/dotfiles)
[thoughtbot, inc - dotfiles - github.com](https://github.com/thoughtbot/dotfiles)
[Henrik Nyh - dotfiles - github.com](https://github.com/henrik/dotfiles)
