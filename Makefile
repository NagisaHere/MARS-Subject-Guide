CC=latexmk
#CFLAGS= 
#LDFLAGS=
.PHONY: all
.DEAFAULT_GOAL := all

WASTE_FILES=main.aux main.log main.toc main.fls main.out main.fdb_latexmk

all: latex clean

latex: main.tex
	$(CC) main.tex

# ensures make clean works on linux and windows
clean: $(WASTE_FILES)
ifeq ($(OS),Windows_NT) 
	del $(WASTE_FILES)
else 
	rm $(WASTE_FILES)
endif 

