ALL-MDS = $(wildcard *.md)
ALL-HTMLS = $(ALL-MDS:%.md=%.html)

all: $(ALL-HTMLS) docs/main.css

$(ALL-HTMLS): %.html: %.md
	pandoc -s $< -c main.css -o docs/$@

docs/main.css: main.css
	cp main.css docs/main.css

clean:
	rm docs/*.html
	rm docs/*.css
