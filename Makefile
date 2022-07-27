# ------------------------------------------------------------
# F = /Users/oscar/Filr/My Files
D = /Users/oscar/Dropbox
N = users-oscar-mindmaps
R = $D/Mindmaps
RSYNC=-avz --delete -e ssh --stats --progress
EXCLUDE=--exclude=_* --exclude=.git --exclude=*.command --exclude=diffs --exclude=Makefile
# ------------------------------------------------------------
all : checkin
# ------------------------------------------------------------
checkin :
	git pull
	-git commit -a -m `date '+%Y-%m-%d@%H:%M:%S'`
	git gc
	git push
# ------------------------------------------------------------
rebuild :
	cd "$R"; \
	git clone git@scg.unibe.ch:$N; \
	rm -rf .git; \
	mv $N/.git .; \
	rm -rf $N
# ------------------------------------------------------------
