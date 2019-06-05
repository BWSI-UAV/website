#!/bin/bash
# BUILDDIR="build"

python -m sphinx . build
echo "DEBUG: cleaning tmp files"; rm -rf /tmp/gh-pages
echo "DEBUG: copying new tmp files"; cp -r build /tmp/gh-pages
echo "DEBUG: changing directory"; cd ..; pwd
echo "DEBUG: checking out gh-pages"
if git checkout gh-pages; then
	echo "DEBUG: cleaning out old gh-pages files"; rm -rf * &&\
	echo "DEBUG: copying over new files"; cp -r /tmp/gh-pages/* . &&\
	echo "DEBUG: bypass jekyll"; touch .nojekyll &&\
	echo "DEBUG: staging for commit"; git add . &&\
	echo "DEBUG: committing"; git commit -m "Generated gh-pages for `git log master -1 --pretty=short --abbrev-commit`" &&\
	echo "DEBUG: pushing"; git push origin gh-pages &&\
	echo "DEBUG: checking out master"; git checkout master
else
	echo "DEBUG: checkout did not succeed. Terminating..."
fi
