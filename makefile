build:
	groovy build.groovy

clean:
	git reset --hard
	git pull
	git --no-pager log -1
