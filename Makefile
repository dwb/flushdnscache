PREFIX ?= /usr/local
INSTALL_USER ?= root
INSTALL_GROUP ?= $(shell id -ng '${INSTALL_USER}')

FLUSHDNSCACHE := flushdnscache
FLUSHDNSCACHE_INSTALL = ${PREFIX}/bin/${FLUSHDNSCACHE}

all:
	@echo "Nothing to build. To install run 'make install' as root,"
	@echo "or read this Makefile and set variables appropriately; e.g."
	@echo
	@echo "make install INSTALL_USER=$(shell id -nu) PREFIX=${HOME}"

install:
	cp '${FLUSHDNSCACHE}' '${FLUSHDNSCACHE_INSTALL}'
	chmod 0755 '${FLUSHDNSCACHE_INSTALL}'
	chown '${INSTALL_USER}:${INSTALL_GROUP}' '${FLUSHDNSCACHE_INSTALL}'

