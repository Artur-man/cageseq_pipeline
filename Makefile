PREFIX			= /usr/local/bin
TEST				= test/
CC					= gcc  
CFLAGS			= -O9 -Wall -m64 -pedantic -std=gnu99 
LD					= -lpthread -lm
DEBUGFLAGS		= -ggdb -Wall -m64 -pedantic -std=gnu99 

SOURCES			= fix.c mdlhtml.c 2ndorder.c interface.c main.c nuc_code.c core.c rand.c dbio.c dbseq.c mathsupport.c align_to_sam.c read_sam.c pHMM.c  seed.c scoreboard.c  align.c simulate.c

PROGS				= delve
DEBUGPROGS	= delve_debug
OBJECTS			= $(SOURCES:.c=.o)
DEBUGOBJECTS	= $(SOURCES:.c=_debug.o)

MANDIR      = /usr/share/man/
MANSUFFIX = 1

all: $(OBJECTS)
	$(CC) $(CFLAGS) $(OBJECTS) -o $(PROGS) ${LD}
	
%.o:	%.c
	$(CC) $(CFLAGS) -c $< -o $@ ${LD}

debug: $(DEBUGOBJECTS)
	$(CC) $(DEBUGFLAGS) $(LD) $(DEBUGOBJECTS) -o $(DEBUGPROGS)	

%_debug.o:	%.c
	$(CC) $(DEBUGFLAGS) ${LD} -c $< -o $@
	

install:
	cp delve.1 $(MANDIR)/man$(MANSUFFIX)/delve.1
	gzip $(MANDIR)/man1/delve.1
	cp $(PROGS) $(PREFIX)
	

clean: 
	@\rm -f $(PROGS) $(OBJECTS)
	@\rm -f $(DEBUGPROGS) $(DEBUGOBJECTS)
	@\rm -f $(THREADPROGS) $(THREADOBJECTS)
	@\rm -f *~
