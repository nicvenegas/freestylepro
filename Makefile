VDRIVE := /Volumes/FS\ PRO
LAYOUT := layouts/layout1.txt
SETTINGS := settings/kbd_settings.txt

TARGETS := $(VDRIVE)/$(LAYOUT) $(VDRIVE)/$(SETTINGS)

all: $(TARGETS)

$(VDRIVE)/$(LAYOUT): $(LAYOUT)
$(VDRIVE)/$(SETTINGS): $(SETTINGS)

$(TARGETS):
ifeq ($(wildcard $(VDRIVE)),)
	$(error Mount the v-Drive with SmartSet+F8)
else
	cp "$<" "$@"
endif
