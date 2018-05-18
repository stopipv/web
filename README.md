# stopipv/web (the source code for https://github.com/stopipv/stopipv.github.io)

## _How_ to edit the site [![Build Status](https://travis-ci.org/stopipv/web.svg?branch=master)](https://travis-ci.org/stopipv/web)
0. You can edit files directly on GitHub -- no cloning or other installation necessary! Note that images won't render in preview mode when you're editing on GitHub, this is normal, the file path is purposely set up under `static/images/` for [Hugo](https://gohugo.io), the site's compilation tool. When you're done editing content, save your commit(s) and the [website](https://www.ipvtechresearch.org) will be updated within a couple minutes. Click on this
   build badge [![Build Status](https://travis-ci.org/stopipv/web.svg?branch=master)](https://travis-ci.org/stopipv/web) to see the site's automated deployment process with [Travis CI](https://travis-ci.org).
1. OR, if you want to edit locally (benefit: see the final website rendered on your browser in real time _before_ saving commits and publishing), install [Hugo](https://gohugo.io) on your machine. Mac OS: `brew install hugo`. Windows: `choco install hugo -confirm`. Linux: `snap install hugo`. Then, install `make` (generally available on macOS with [XCode](https://developer.apple.com/xcode/) installed, and on Linux by default).
2. Refer to [general Hugo tips/documentation](https://gohugo.io/getting-started/) as needed to
   orient yourself to the tool. You have plenty of fancy static compiler customizations/templating/site variables available to make the site even more awesome.
3. To see the website as you're editing locally (automatically rebuilds when you
   change project files), run `make develop`. Navigate
to `localhost:1313` in a browser to see what the site looks like rendered as you're editing it.

## _Where_ to edit the site (directory/file structure)
4. For the homepage, edit `/layouts/_default/index.html` (in plain HTML). For all
   other content, edit the files in `/content/posts/*.md` (in [Markdown](https://daringfireball.net/projects/markdown/basics)). You'll see
the server rebuild the site whenever you save changes to a file. The
`config.toml` file has special parameters used throughout the site that you can modify.
5. For quick CSS modifications, edit
   `static/css/style.css`. It's best to do this locally since you can see the changes before pushing to GitHub.
6. When you're ready to push your changes, either commit directly on GitHub, or locally stop the server and run `make
   publish` (or, just push the commits on your own). 
This will commit the source code to https://github.com/stopipv/web, and trigger an automatic build/deploy cycle on [Travis CI](https://travis-ci.org). Check [the
site](https://www.ipvtechresearch.org) after a few minutes for the update (you can
view the build progress live by clicking the green badge at the top of this README).
7. To make a new page, run `hugo new post/newPageName.md`. Be sure to set `draft:
   false` in the file before publishing!
   
## Need help?
Email <sam@havron.xyz> or reach me on [Cornell's slack](https://cornellcis.slack.com). I'm happy to help with site development or answer questions.
