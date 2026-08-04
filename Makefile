default: dev

d:dev
dev:
	hugo serve

b:build
build:
	hugo build --minify --cleanDestinationDir

c: check
check:
	hugo build --cleanDestinationDir --quiet
	python3 bin/check_internal_links.py public

s: sync
sync:
	rsync -avz public/ jp:/www/site.io/

p: publish
publish:
	hugo --minify --cleanDestinationDir -d ~/www/site.io

.PHONY: default d dev b build c check s sync p publish
