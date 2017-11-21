build:
	compass compile
	jekyll build

install-deps:
	sudo gem install jekyll jekyll-compass compass jekyll-last-modified-at

dev:
	jekyll serve --watch --drafts

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
