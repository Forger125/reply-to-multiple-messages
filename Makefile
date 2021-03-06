FILES := LICENSE README.md bootstrap.js chrome.manifest \
         content/defaultPreferencesLoader.jsm content/options.xul \
         content/options.js content/prefs.js icon.png icon64.png manifest.json

all: reply-to-multiple-messages.xpi

reply-to-multiple-messages.xpi: $(FILES)
	-rm -f $@.tmp
	zip -r $@.tmp $^
	mv -f $@.tmp $@

clean:
	-rm -f *.tmp *.xpi
