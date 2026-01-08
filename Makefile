default: dev

d:dev
dev:
	hugo serve

b:build
build:
	hugo build --minify

s: sync
sync:
	rsync -avz public/ jp:/www/site.io/

p: publish
publish:
	hugo --minify --cleanDestinationDir -d ~/www/site.io

.PHONY: default d dev b build s sync p publish
