test: reasoned.owl

reasoned.owl: insect-anatomy-edit.owl
	robot reason -i $< -r elk -o $@

insect-anatomy-edit.owl: insect-anatomy-edit.obo
	robot convert -i $<  -o $@
