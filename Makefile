build:
	bundle exec jekyll build

dev:
	bundle exec jekyll serve --watch --drafts

install-deps:
	# Shouldn't be used in CI, but useful for local development
	# bundle config set path 'vendor/bundle'
	bundle install

clean:
	rm -r _site

list-by-state:
	@echo "Articles without state:"
	@grep -L -r "^state:" _wiki | sed "s/_wiki\// - /g"
	@echo -e "\nArticles with state stub:"
	@grep -l -r "state: stub" _wiki | sed "s/_wiki\// - /g"
	@echo -e "\nArticles with state draft:"
	@grep -l -r "state: draft" _wiki | sed "s/_wiki\// - /g"
	@echo -e "\nArticles with other states:"
	@egrep -l -r 'state: [^ds]' _wiki | sed "s/_wiki\// - /g"
