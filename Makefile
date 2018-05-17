.PHONY: develop compile publish
THEME=amp
CNAME=stopipv.github.io
MSG=rebuilt ${CNAME}

develop:
	hugo server --theme=$(THEME) --watch --buildDrafts

install:
	git submodule add -b master git@github.com:stopipv/stopipv.github.io.git public
	chmod +x deploy.sh

compile:
	hugo --theme=$(THEME)
	
publish: 
	@echo "Deploying source code to 'stopipv/web' repo..."
	git add -A
	git commit -m "${MSG}"
	git push origin master
	hugo --theme=$(THEME)
	@echo "Deploying public/ to 'stopipv/stopipv.github.io' repo..."
	#./deploy.sh
	#git subtree push --prefix=public git@github.com:stopipv/$(CNAME).git master

${CNAME}.zip:
	git archive --format=zip HEAD -o $@ -9v

${CNAME}.tar.gz:
	git archive --format=tar.gz HEAD -o $@ -9v
