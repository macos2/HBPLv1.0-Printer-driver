INSTALL_DIR:=/usr
all:foo2hbpl1 hbpldecode foo2hbpl1-wrapper
%:%.c
	@echo "\e[1;32mBuilding $@\e[0m"
	@gcc -o $@ $^ -ljbig
foo2hbpl1-wrapper:foo2hbpl1-wrapper.in
	@echo "\e[1;32mBuilding $@\e[0m"
	@sed "35cPREFIX=$(INSTALL_DIR)" foo2hbpl1-wrapper.in >foo2hbpl1-wrapper
clean:
	@echo "\e[1;31mRemove foo2hbpl1,hbpldecode,foo2hbpl1-wrapper\e[0m"
	@rm -f foo2hbpl1
	@rm -f hbpldecode
	@rm -f foo2hbpl1-wrapper

install:all $(shell find crd/*.ps crd/*cms2 crd/*cms) $(shell find ppd/*.ppd)
	@echo "\e[1;34mInstall to $(INSTALL_DIR)\e[0m"
	@mkdir -p $(INSTALL_DIR)/bin
	@mkdir -p $(INSTALL_DIR)/share/foo2hbpl
	@mkdir -p $(INSTALL_DIR)/share/ppd/hbplv1
	@cp foo2hbpl1 $(INSTALL_DIR)/bin
	@cp hbpldecode $(INSTALL_DIR)/bin
	@cp foo2hbpl1-wrapper $(INSTALL_DIR)/bin
	@chmod 0755 $(INSTALL_DIR)/bin/foo2hbpl1 $(INSTALL_DIR)/bin/hbpldecode $(INSTALL_DIR)/bin/foo2hbpl1-wrapper
	@echo "\e[1;34mInstall icm&crd file\e[0m"
	@cp -r crd $(INSTALL_DIR)/share/foo2hbpl
	@cp -r icm $(INSTALL_DIR)/share/foo2hbpl
	@chmod 0644 $(INSTALL_DIR)/share/foo2hbpl/crd/*
	@chmod 0644 $(INSTALL_DIR)/share/foo2hbpl/icm/*
	@echo "\e[1;34mInstall ppd file\e[0m"
	@cp ppd/* $(INSTALL_DIR)/share/ppd/hbplv1
	@chmod 0644 $(INSTALL_DIR)/share/ppd/hbplv1/*.ppd

uninstall:
	@echo "\e[1;34mUninstall from $(INSTALL_DIR)\e[0m"
	@rm -f $(INSTALL_DIR)/bin/foo2hbpl1 $(INSTALL_DIR)/bin/hbpldecode $(INSTALL_DIR)/bin/foo2hbpl1-wrapper
	@echo "\e[1;34mUnInstall ppd file\e[0m"
	@rm -r -f $(INSTALL_DIR)/share/ppd/hbplv1
	@echo "\e[1;34mUnInstall icm&crd file\e[0m"
	@rm -r -f $(INSTALL_DIR)/share/foo2hbpl

