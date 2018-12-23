EXECS  = gpio-halt
CFLAGS = -Wall -Ofast -fomit-frame-pointer -funroll-loops -s \
 -I/opt/vc/include \
 -I/opt/vc/include/interface/vcos/pthreads \
 -I/opt/vc/include/interface/vmcs_host \
 -I/opt/vc/include/interface/vmcs_host/linux \
 -L/opt/vc/lib
LIBS   = -lbcm_host
CC     = gcc $(CFLAGS)

all: $(EXECS)

gpio-halt: gpio-halt.c
	$(CC) $< $(LIBS) -o $@
	strip $@

install:
	mv $(EXECS) /usr/local/bin

clean:
	rm -f $(EXECS)
