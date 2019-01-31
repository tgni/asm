CFLAGS=
#LOCFLAGS = --verbose
#TARGETEXE = calltest.exe cmptest.exe cpuid.exe cpuid2.exe movtest3.exe movzxtest.exe paritytest.exe \
	    quadtest.exe
TARGETEXE = cmptest.exe cpuid.exe movzxtest.exe paritytest.exe \
	    quadtest.exe

all: $(TARGETEXE)

%.o : %.s
	as $(CFLAGS) $< -o $@

%.exe: %.o 
	ld $(LOCFLAGS) $< -o $@
clean:
	rm *.o *.exe -f


