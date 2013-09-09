-include env.mk

CFLAGS := -Wall -g -Os -D_FORTIFY_SOURCE=2
CFLAGS += -fexceptions -fstack-protector --param=ssp-buffer-size=4
CFLAGS += -I$(HOME)/pegaarm4/beagle/include
CXXFLAGS := $(CFLAGS)
LDFLAGS := -lm -lgsl -lgslcblas -L$(HOME)/pegaarm4/beagle/lib
EXECUTABLES:= $(basename $(wildcard *.c *.cpp))

all: $(EXECUTABLES)
clean:
	rm -f $(EXECUTABLES) core.*
shell:
	@bash --init-file embedded-project.bashrc
install: $(EXECUTABLES)
	cp $(EXECUTABLES) $(TARGET_DIR)
.PHONY: all clean shell install
