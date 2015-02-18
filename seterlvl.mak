# Microsoft Developer Studio Generated NMAKE File, Based on seterlvl.dsp
!IF "$(CFG)" == ""
CFG=seterlvl - Win32 Debug
!MESSAGE No configuration specified. Defaulting to seterlvl - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "seterlvl - Win32 Release" && "$(CFG)" != "seterlvl - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "seterlvl.mak" CFG="seterlvl - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "seterlvl - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "seterlvl - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

!IF  "$(CFG)" == "seterlvl - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\seterlvl.exe"


CLEAN :
	-@erase "$(INTDIR)\seterlvl.obj"
	-@erase "$(INTDIR)\seterlvl.res"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\seterlvl.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\seterlvl.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\seterlvl.res" /d "NDEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\seterlvl.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=shared.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\seterlvl.pdb" /machine:I386 /out:"$(OUTDIR)\seterlvl.exe" 
LINK32_OBJS= \
	"$(INTDIR)\seterlvl.obj" \
	"$(INTDIR)\seterlvl.res"

"$(OUTDIR)\seterlvl.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "seterlvl - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\seterlvl.exe" "$(OUTDIR)\seterlvl.bsc"


CLEAN :
	-@erase "$(INTDIR)\seterlvl.obj"
	-@erase "$(INTDIR)\seterlvl.res"
	-@erase "$(INTDIR)\seterlvl.sbr"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\seterlvl.bsc"
	-@erase "$(OUTDIR)\seterlvl.exe"
	-@erase "$(OUTDIR)\seterlvl.ilk"
	-@erase "$(OUTDIR)\seterlvl.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MLd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /FR"$(INTDIR)\\" /Fp"$(INTDIR)\seterlvl.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\seterlvl.res" /d "_DEBUG" 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\seterlvl.bsc" 
BSC32_SBRS= \
	"$(INTDIR)\seterlvl.sbr"

"$(OUTDIR)\seterlvl.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
LINK32_FLAGS=sharedd.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\seterlvl.pdb" /debug /machine:I386 /out:"$(OUTDIR)\seterlvl.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\seterlvl.obj" \
	"$(INTDIR)\seterlvl.res"

"$(OUTDIR)\seterlvl.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("seterlvl.dep")
!INCLUDE "seterlvl.dep"
!ELSE 
!MESSAGE Warning: cannot find "seterlvl.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "seterlvl - Win32 Release" || "$(CFG)" == "seterlvl - Win32 Debug"
SOURCE=.\seterlvl.cpp

!IF  "$(CFG)" == "seterlvl - Win32 Release"


"$(INTDIR)\seterlvl.obj" : $(SOURCE) "$(INTDIR)"


!ELSEIF  "$(CFG)" == "seterlvl - Win32 Debug"


"$(INTDIR)\seterlvl.obj"	"$(INTDIR)\seterlvl.sbr" : $(SOURCE) "$(INTDIR)"


!ENDIF 

SOURCE=.\seterlvl.rc

"$(INTDIR)\seterlvl.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) $(RSC_PROJ) $(SOURCE)



!ENDIF 

