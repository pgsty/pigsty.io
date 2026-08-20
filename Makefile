default: dev

d:dev
dev:
	HUGO_MODULE_REPLACEMENTS='github.com/pgsty/oink -> $(abspath ../oink)' hugo serve --renderToMemory

serve:
	hugo serve --environment production --minify --disableFastRender --disableLiveReload

b:build
build:
	hugo build --minify --cleanDestinationDir

c: check
check:
	python3 bin/check-markdown.py README.md
	python3 bin/check-markdown.py content
	GOWORK=off go mod verify
	GOWORK=off hugo build --cleanDestinationDir \
		--printPathWarnings --printI18nWarnings --panicOnWarning
	python3 bin/check-markdown.py --rendered public
	python3 bin/check_internal_links.py public

s: sync
sync:
	rsync -avz public/ jp:/www/site.io/

p: publish
publish:
	hugo --minify --cleanDestinationDir -d ~/www/site.io

.PHONY: default d dev serve b build c check s sync p publish
