# stopipv

## How to edit the site [![Build Status](https://travis-ci.org/stopipv/web.svg?branch=master)](https://travis-ci.org/stopipv/web)
1. Install [Hugo](https://gohugo.io) on your machine. Mac OS: `brew install hugo`. Windows: `choco install hugo -confirm`. Linux: `snap install hugo`. Install `make` (generally available on macOS with [XCode](https://developer.apple.com/xcode/) installed, and on Linux by default).
2. Refer to [general Hugo tips/documentation](https://gohugo.io/getting-started/) as needed to
   orient yourself to the tool.
3. To start a `localhost:1313` view of the website (automatically rebuilds when you
   change project files), run `make develop`. Navigate
to `localhost:1313` in a browser to see what the site looks like rendered as you're editing it.
4. Edit content files. For the homepage, edit `/layouts/index.html` (plain HTML). For all
   other content, edit the files in `/content/posts/*.md` (Markdown). You'll see
the server rebuild the site whenever you save changes to a file. The
`config.toml` file has parameters used throughout the site that you can modify.
5. For quick CSS modifications, add to the last few lines of
   `layouts/partials/css.css`.
6. When you're ready to push your changes, stop the server and run `make
   publish`. This will push the source code to https://github.com/stopipv/web.
Builds automatically on [Travis CI](https://travis-ci.org). Check [the
site](https://stopipv.github.io) after a few minutes for the update (you can
view the build live at the badge above).
and the generated content to https://github.com/stopipv/stopipv.github.io using .
7. To make a new page, run `hugo new post/newPageName.md`. Be sure to set `draft:
   false` in the file before publishing!
