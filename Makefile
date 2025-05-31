SUBDIRS := simulate-gate

.PHONY: check $(SUBDIRS)

check: $(SUBDIRS)

$(SUBDIRS):
	$(MAKE) -C $@ check
