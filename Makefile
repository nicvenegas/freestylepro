VDRIVE := /Volumes/FS\ PRO
LAYOUT := layouts/layout1.txt
SETTINGS := settings/kbd_settings.txt

all: $(VDRIVE)/$(LAYOUT) $(VDRIVE)/$(SETTINGS)

$(VDRIVE)/$(LAYOUT): $(LAYOUT)
	cp "$<" "$@"

$(VDRIVE)/$(SETTINGS): $(SETTINGS)
	cp "$<" "$@"
