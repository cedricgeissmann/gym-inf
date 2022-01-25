ALL-MDS = $(wildcard *.md)
ALL-HTMLS = $(ALL-MDS:%.md=%.html)

all: $(ALL-HTMLS) doc/main.css

$(ALL-HTMLS): %.html: %.md
	pandoc -s $< -c main.css -o doc/$@

doc/main.css: main.css
	cp main.css doc/main.css

clean:
	rm doc/*.html
	rm doc/*.css
