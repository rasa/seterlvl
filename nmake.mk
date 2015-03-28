all:
	nmake /nologo /f seterlvl.mak CFG="seterlvl - Win32 Release"	NO_EXTERNAL_DEPS=1	all
	nmake /nologo /f seterlvl.mak CFG="seterlvl - Win32 Debug"	NO_EXTERNAL_DEPS=1	all

clean:
	nmake /nologo /f seterlvl.mak CFG="seterlvl - Win32 Release"	clean
	nmake /nologo /f seterlvl.mak CFG="seterlvl - Win32 Debug"	clean
	
.PHONY:	all clean
