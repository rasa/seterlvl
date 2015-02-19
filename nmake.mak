.PHONY:	all clean realclean

all:
	$(MAKE) /f seterlvl.mak CFG="seterlvl - Win32 Release"	all
	$(MAKE) /f seterlvl.mak CFG="seterlvl - Win32 Debug"	all

clean:
	$(MAKE) /f seterlvl.mak CFG="seterlvl - Win32 Release"	clean
	$(MAKE) /f seterlvl.mak CFG="seterlvl - Win32 Debug"	clean

realclean: clean
	-cmd /c del /s *.bak *.bsc *.idb *.pdb *.lib *.ncb *.obj *.opt *.pch *.plg *.sbr
