INPUT=src
OUTPUT=pages
TEMPLATE=template
MEDIA=media


all:
	mkdir -p $(OUTPUT)
	mkdir -p $(MEDIA)
	cp $(TEMPLATE)/*.css $(OUTPUT)
	cp -r $(MEDIA) $(OUTPUT)
	bin/make_pages $(INPUT) $(OUTPUT) $(TEMPLATE)

clean:
	rm -vrf $(OUTPUT)

media:
	mkdir -p $(OUTPUT)
	mkdir -p $(MEDIA)
	cp $(TEMPLATE)/*.css $(OUTPUT)
	cp -r $(MEDIA) $(OUTPUT)

pages:
	mkdir -p $(OUTPUT)
	bin/make_pages $(INPUT) $(OUTPUT) $(TEMPLATE)
