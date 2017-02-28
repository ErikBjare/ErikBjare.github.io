build:
	compass compile
	jekyll build

install-deps:
	gem install jekyll jekyll-compass compass

dev:
	jekyll serve --watch --drafts

clean:
	rm -r _site
