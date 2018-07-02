
# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SPHINXPROJ    = ReadtheDocsSphinxTheme
SOURCEDIR     = .
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

# .PHONY: gh-pages
.ONESHELL:
gh-pages:
	python -m sphinx . $(BUILDDIR); \
	echo "DEBUG: cleaning tmp files"; rm -rf /tmp/gh-pages; \
	echo "DEBUG: copying new tmp files"; cp -r $(BUILDDIR) /tmp/gh-pages; \
	echo "DEBUG: changing directory"; cd ..; pwd; \
	read -p "Press enter to continue"; \
	echo "DEBUG: checking out gh-pages"; git checkout gh-pages
	read -p "Press enter to continue"; \
	echo "DEBUG: changing directory"; cd ~/Projects/BWSI/UAVRAcing && pwd;
	read -p "Press enter to continue"; \
	echo "DEBUG: cleaning out old gh-pages files"; rm -rf *; \
	echo "DEBUG: copying over new files"; cp -r /tmp/gh-pages/* .; \
	echo "DEBUG: staging for commit"; git add .; \
	echo "DEBUG: committing"; git commit -m "Generated gh-pages for `git log master -1 --pretty=short --abbrev-commit`"; \
	echo "DEBUG: pushing"; git push origin gh-pages; \
	echo "DEBUG: checking out master"; git checkout master

# gh-pages:
# 	git checkout gh-pages
# 	rm -rf _build _sources _static
# 	git checkout master $(GH_PAGES_SOURCES)
# 	git reset HEAD
# 	make html
# 	mv -fv build/html/* ./
# 	rm -rf $(GH_PAGES_SOURCES) build
# 	git add -A
# 	git ci -m "Generated gh-pages for `git log master -1 --pretty=short --abbrev-commit`" && git push origin gh-pages ; git checkout master
