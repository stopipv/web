.PHONY: develop compile publish
THEME=hugo-material-blog
CNAME=stopipv.github.io
MSG=rebuilt ${CNAME}

develop:
	hugo server --theme=$(THEME) --watch --buildDrafts

compile:
	hugo --theme=$(THEME)
	
publish: 
	@echo "Deploying source code to 'stopipv/web' repo..."
	git add -A
	git commit -m "${MSG}"
	git push origin master
	@echo "Check https://travis-ci.org/stopipv/web for build/deploy progress (about 5 minutes)."

${CNAME}.zip:
	git archive --format=zip HEAD -o $@ -9v

${CNAME}.tar.gz:
	git archive --format=tar.gz HEAD -o $@ -9v
