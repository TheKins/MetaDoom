# Unix makefile for Unix-like operating systems like GNU/Linux.
# original by hjri
# rewrite by me, lolwellun the teapot
# Requires installation of GNU make (or equivilant) and 7z
NAME=metadoom-dev
NAMEOPT=metadoom-optional-dev
SRC=pk3/acs
OBJ=pk3/acs
.PHONY: help pk3 pk7 clean

help:
	@echo "Available options:"
	@echo "  help    - Prints this dialog and exits."
	@echo "  pk3     - Builds a pk3 archive of the target sources."
	@echo "  pk7     - Builds a pk7 archive of the target sources."
	@echo "  clean   - Removes all archives."
	@echo "How to use:"
	@echo "  Make sure that 7z is installed."
	@echo "  Type 'make -option-'."
	@echo "  Replace '-option-' with the option you want to use."

pk3:
	@echo -n "Building ${NAME}.pk3 ......"
	@cd metadoom-dev && 7z a -tzip ../${NAME}.pk3 *
	@echo "done"

pk7:
	@echo -n "Building ${NAME}.pk7 ......"
	@cd metadoom-dev && 7z a ../${NAME}.pk7 *
	@echo "done"

clean:
	@echo -n "Removing archives....."
	@rm -f ${NAME}.pk7 ${NAME}.pk3 ${NAMEOPT}.pk7 ${NAMEOPT}.pk3
	@echo "done"
