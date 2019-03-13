build: clean
	groovy build.groovy

clean:
	git reset --hard
	git pull
	git log -1
