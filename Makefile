.PHONY: develop compile publish
THEME=amp
CNAME=stopipv.github.io
MSG=rebuilt ${CNAME}

develop:
	hugo server --theme=$(THEME) --watch --buildDrafts

install:
	git submodule add -b master git@github.com:stopipv/stopipv.github.io.git public
	cd public && git remote add stopipv.github.io git@github.com:stopipv/stopipv.github.io && cd ..

compile:
	rm -rf public/
	hugo --theme=$(THEME)
	
publish: 
	rm -rf public/
	@echo "Deploying source code to 'stopipv/web' repo..."
	git add -A
	git commit -m "${MSG}"
	git push origin master
	hugo --theme=$(THEME)
	@echo "Deploying public/ to 'stopipv/stopipv.github.io' repo..."
	#git submodule foreach git push stopipv.github.io master
	git subtree push --prefix=public git@github.com:stopipv/$(CNAME).git master

${CNAME}.zip:
	git archive --format=zip HEAD -o $@ -9v

${CNAME}.tar.gz:
	git archive --format=tar.gz HEAD -o $@ -9v
