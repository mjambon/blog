This blog is published by GitHub, which follows these conventions:

* Sources are edited and committed to the `master` branch.
* Work-in-progress can be saved on other branches than `master` or
  `gh-pages` as always.
* When ready for publishing, the `master` branch is merged into the
  `gh-pages` branch.
* HTML files are derived from Markdown and git-added using `make`
  while on the `gh-pages` branch.
* HTML files are committed and pushed to the remote `gh-pages` branch.

Initial setup
-------------

1. `git clone git@github.com:mjambon/blog.git`
2. `git clone -b gh-pages git@github.com:mjambon/blog.git blog.gh-pages`

Editing and reviewing on the `master` clone/branch
--------------------------------------------------

1. `cd blog`
2. Create main file `src/<date>-<title>/index.md`
3. Add to `<date>-<title>` sources in `src/Makefile`
4. Optionally, put images into `src/<date>-<title>/img`
5. Add entry to the table of contents `src/index.md`
6. `make`
7. Review article `html/<date>-<title>/index.html` in browser
8. Review table of contents `html/index.html` in browser
9. `git add src/<date>-<title>`
10. `git commit -a`
11. `git push origin master`

Publishing on the `gh-pages` clone/branch
-----------------------------------------

1. `cd blog.gh-pages`
2. `git pull origin master`
3. `make`
4. `git commit -a`
5. `git push origin gh-pages`
6. Review output at [http://mjambon.github.io/blog/]
