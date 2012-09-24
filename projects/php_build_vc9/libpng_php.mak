# Microsoft Developer Studio Generated NMAKE File, Based on libpng.dsp
!IF "$(CFG)" == ""
CFG=libpng - Win32 DLL Release
!MESSAGE No configuration specified. Defaulting to libpng - Win32 DLL Release.
!ENDIF

!IF "$(CFG)" != "libpng - Win32 DLL Release" && "$(CFG)" != "libpng - Win32 DLL Debug" && "$(CFG)" != "libpng - Win32 DLL ASM Release" && "$(CFG)" != "libpng - Win32 DLL ASM Debug" && "$(CFG)" != "libpng - Win32 DLL VB" && "$(CFG)" != "libpng - Win32 LIB Release" && "$(CFG)" != "libpng - Win32 LIB Debug" && "$(CFG)" != "libpng - Win32 LIB ASM Release" && "$(CFG)" != "libpng - Win32 LIB ASM Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE
!MESSAGE NMAKE /f "libpng.mak" CFG="libpng - Win32 DLL Release"
!MESSAGE
!MESSAGE Possible choices for configuration are:
!MESSAGE
!MESSAGE "libpng - Win32 DLL Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "libpng - Win32 DLL Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "libpng - Win32 DLL ASM Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "libpng - Win32 DLL ASM Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "libpng - Win32 DLL VB" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "libpng - Win32 LIB Release" (based on "Win32 (x86) Static Library")
!MESSAGE "libpng - Win32 LIB Debug" (based on "Win32 (x86) Static Library")
!MESSAGE "libpng - Win32 LIB ASM Release" (based on "Win32 (x86) Static Library")
!MESSAGE "libpng - Win32 LIB ASM Debug" (based on "Win32 (x86) Static Library")
!MESSAGE
!ERROR An invalid configuration is specified.
!ENDIF


PHP_INCLUDE_PATH=C:\php4build\php_build\include
PHP_LIBRARY_PATH=C:\php4build\php_build\lib

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF

!IF  "$(CFG)" == "libpng - Win32 DLL Release"
OUTDIR=.\Win32_DLL_Release
INTDIR=.\Win32_DLL_Release
# Begin Custom Macros
OutDir=.\Win32_DLL_Release
# End Custom Macros

!IF "$(RECURSE)" == "0"

ALL : "$(OUTDIR)\libpng13.dll"

!ELSE

ALL : "$(OUTDIR)\libpng13.dll"

!ENDIF

!IF "$(RECURSE)" == "1"
CLEAN :
!ELSE
CLEAN :
!ENDIF
	-@erase "$(INTDIR)\png.obj"
	-@erase "$(INTDIR)\pngerror.obj"
	-@erase "$(INTDIR)\pngget.obj"
	-@erase "$(INTDIR)\pngmem.obj"
	-@erase "$(INTDIR)\pngpread.obj"
	-@erase "$(INTDIR)\pngread.obj"
	-@erase "$(INTDIR)\pngrio.obj"
	-@erase "$(INTDIR)\pngrtran.obj"
	-@erase "$(INTDIR)\pngrutil.obj"
	-@erase "$(INTDIR)\pngset.obj"
	-@erase "$(INTDIR)\pngtrans.obj"
	-@erase "$(INTDIR)\pngw32.res"
	-@erase "$(INTDIR)\pngwio.obj"
	-@erase "$(INTDIR)\pngwrite.obj"
	-@erase "$(INTDIR)\pngwtran.obj"
	-@erase "$(INTDIR)\pngwutil.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\libpng13.dll"
	-@erase "$(OUTDIR)\libpng13.exp"
	-@erase "$(OUTDIR)\libpng13.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /O2 /I "..\.." /I "$(PHP_INCLUDE_PATH)" /I "..\..\..\zlib" /D "WIN32" /D "NDEBUG" /D "PNG_BUILD_DLL" /D "PNG_NO_MMX_CODE"  /D "ZLIB_STATIC" /D "_CRT_SECURE_NO_WARNINGS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c

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

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\pngw32.res" /i "..\.." /d "NDEBUG"
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libpng.bsc"
BSC32_SBRS= \

LINK32=link.exe
LINK32_FLAGS=zlib.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\libpng13.pdb" /machine:I386 /def:"..\..\scripts\pngw32.def" /out:"$(OUTDIR)\libpng13.dll" /implib:"$(OUTDIR)\libpng13.lib" /libpath:"$(PHP_LIBRARY_PATH)"
DEF_FILE= \
	"..\..\scripts\pngw32.def"
LINK32_OBJS= \
	"$(INTDIR)\png.obj" \
	"$(INTDIR)\pngerror.obj" \
	"$(INTDIR)\pngget.obj" \
	"$(INTDIR)\pngmem.obj" \
	"$(INTDIR)\pngpread.obj" \
	"$(INTDIR)\pngread.obj" \
	"$(INTDIR)\pngrio.obj" \
	"$(INTDIR)\pngrtran.obj" \
	"$(INTDIR)\pngrutil.obj" \
	"$(INTDIR)\pngset.obj" \
	"$(INTDIR)\pngtrans.obj" \
	"$(INTDIR)\pngwio.obj" \
	"$(INTDIR)\pngwrite.obj" \
	"$(INTDIR)\pngwtran.obj" \
	"$(INTDIR)\pngwutil.obj" \
	"$(INTDIR)\pngw32.res"

"$(OUTDIR)\libpng13.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "libpng - Win32 DLL Debug"

OUTDIR=.\Win32_DLL_Debug
INTDIR=.\Win32_DLL_Debug
# Begin Custom Macros
OutDir=.\Win32_DLL_Debug
# End Custom Macros

!IF "$(RECURSE)" == "0"

ALL : "$(OUTDIR)\libpng13_debug.dll"

!ELSE

ALL : "$(OUTDIR)\libpng13_debug.dll"

!ENDIF

!IF "$(RECURSE)" == "1"
CLEAN :
!ELSE
CLEAN :
!ENDIF
	-@erase "$(INTDIR)\png.obj"
	-@erase "$(INTDIR)\pngerror.obj"
	-@erase "$(INTDIR)\pngget.obj"
	-@erase "$(INTDIR)\pngmem.obj"
	-@erase "$(INTDIR)\pngpread.obj"
	-@erase "$(INTDIR)\pngread.obj"
	-@erase "$(INTDIR)\pngrio.obj"
	-@erase "$(INTDIR)\pngrtran.obj"
	-@erase "$(INTDIR)\pngrutil.obj"
	-@erase "$(INTDIR)\pngset.obj"
	-@erase "$(INTDIR)\pngtrans.obj"
	-@erase "$(INTDIR)\pngw32.res"
	-@erase "$(INTDIR)\pngwio.obj"
	-@erase "$(INTDIR)\pngwrite.obj"
	-@erase "$(INTDIR)\pngwtran.obj"
	-@erase "$(INTDIR)\pngwutil.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\libpng13_debug.dll"
	-@erase "$(OUTDIR)\libpng13_debug.exp"
	-@erase "$(OUTDIR)\libpng13_debug.ilk"
	-@erase "$(OUTDIR)\libpng13_debug.lib"
	-@erase "$(OUTDIR)\libpng13_debug.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /ZI /Od /I "$(PHP_INCLUDE_PATH)" /I "..\.." /D "WIN32" /D "_DEBUG" /D "DEBUG" /D "PNG_NO_MMX_CODE" /D PNG_DEBUG=1 /D "PNG_BUILD_DLL" /D "ZLIB_DLL" /D "_CRT_SECURE_NO_WARNINGS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c

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

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\pngw32.res" /i "..\.."  /d "_DEBUG" /d PNG_DEBUG=1
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libpng.bsc"
BSC32_SBRS= \

LINK32=link.exe
LINK32_FLAGS=zlib.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\libpng13_debug.pdb" /debug /machine:I386 /def:"..\..\scripts\pngw32.def" /out:"$(OUTDIR)\libpng13_debug.dll" /implib:"$(OUTDIR)\libpng13_debug.lib" /libpath:"$(PHP_LIBRARY_PATH)"
DEF_FILE= \
	"..\..\scripts\pngw32.def"
LINK32_OBJS= \
	"$(INTDIR)\png.obj" \
	"$(INTDIR)\pngerror.obj" \
	"$(INTDIR)\pngget.obj" \
	"$(INTDIR)\pngmem.obj" \
	"$(INTDIR)\pngpread.obj" \
	"$(INTDIR)\pngread.obj" \
	"$(INTDIR)\pngrio.obj" \
	"$(INTDIR)\pngrtran.obj" \
	"$(INTDIR)\pngrutil.obj" \
	"$(INTDIR)\pngset.obj" \
	"$(INTDIR)\pngtrans.obj" \
	"$(INTDIR)\pngwio.obj" \
	"$(INTDIR)\pngwrite.obj" \
	"$(INTDIR)\pngwtran.obj" \
	"$(INTDIR)\pngwutil.obj" \
	"$(INTDIR)\pngw32.res"

"$(OUTDIR)\libpng13_debug.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "libpng - Win32 DLL ASM Release"

OUTDIR=.\Win32_DLL_ASM_Release
INTDIR=.\Win32_DLL_ASM_Release
# Begin Custom Macros
OutDir=.\Win32_DLL_ASM_Release
# End Custom Macros

!IF "$(RECURSE)" == "0"

ALL : "$(OUTDIR)\libpng13.dll"

!ELSE

ALL : "$(OUTDIR)\libpng13.dll"

!ENDIF

!IF "$(RECURSE)" == "1"
CLEAN :
!ELSE
CLEAN :
!ENDIF
	-@erase "$(INTDIR)\png.obj"
	-@erase "$(INTDIR)\pngerror.obj"
	-@erase "$(INTDIR)\pngget.obj"
	-@erase "$(INTDIR)\pngmem.obj"
	-@erase "$(INTDIR)\pngpread.obj"
	-@erase "$(INTDIR)\pngread.obj"
	-@erase "$(INTDIR)\pngrio.obj"
	-@erase "$(INTDIR)\pngrtran.obj"
	-@erase "$(INTDIR)\pngrutil.obj"
	-@erase "$(INTDIR)\pngset.obj"
	-@erase "$(INTDIR)\pngtrans.obj"
	-@erase "$(INTDIR)\pngw32.res"
	-@erase "$(INTDIR)\pngwio.obj"
	-@erase "$(INTDIR)\pngwrite.obj"
	-@erase "$(INTDIR)\pngwtran.obj"
	-@erase "$(INTDIR)\pngwutil.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\libpng13.dll"
	-@erase "$(OUTDIR)\libpng13.exp"
	-@erase "$(OUTDIR)\libpng13.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /O2  /I "..\.." /I "$(PHP_INCLUDE_PATH)"  /I "..\..\..\zlib" /D "WIN32" /D "NDEBUG" /D "PNG_USE_PNGVCRD" /D "PNG_BUILD_DLL" /D "ZLIB_DLL" /D "PNG_LIBPNG_SPECIALBUILD" /D "_CRT_SECURE_NO_WARNINGS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c

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

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\pngw32.res" /i "..\.." /d "NDEBUG" /d PNG_LIBPNG_SPECIALBUILD=""""Use MMX instructions""""
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libpng.bsc"
BSC32_SBRS= \

LINK32=link.exe
LINK32_FLAGS=zlib.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\libpng13.pdb" /machine:I386 /def:"..\..\scripts\pngw32.def" /out:"$(OUTDIR)\libpng13.dll" /implib:"$(OUTDIR)\libpng13.lib" /libpath:"$(PHP_LIBRARY_PATH)"
DEF_FILE= \
	"..\..\scripts\pngw32.def"
LINK32_OBJS= \
	"$(INTDIR)\png.obj" \
	"$(INTDIR)\pngerror.obj" \
	"$(INTDIR)\pngget.obj" \
	"$(INTDIR)\pngmem.obj" \
	"$(INTDIR)\pngpread.obj" \
	"$(INTDIR)\pngread.obj" \
	"$(INTDIR)\pngrio.obj" \
	"$(INTDIR)\pngrtran.obj" \
	"$(INTDIR)\pngrutil.obj" \
	"$(INTDIR)\pngset.obj" \
	"$(INTDIR)\pngtrans.obj" \
	"$(INTDIR)\pngwio.obj" \
	"$(INTDIR)\pngwrite.obj" \
	"$(INTDIR)\pngwtran.obj" \
	"$(INTDIR)\pngwutil.obj" \
	"$(INTDIR)\pngw32.res"

"$(OUTDIR)\libpng13.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "libpng - Win32 DLL ASM Debug"

OUTDIR=.\Win32_DLL_ASM_Debug
INTDIR=.\Win32_DLL_ASM_Debug
# Begin Custom Macros
OutDir=.\Win32_DLL_ASM_Debug
# End Custom Macros

!IF "$(RECURSE)" == "0"

ALL : "$(OUTDIR)\libpng13_debug.dll"

!ELSE

ALL : "$(OUTDIR)\libpng13_debug.dll"

!ENDIF

!IF "$(RECURSE)" == "1"
CLEAN :
!ELSE
CLEAN :
!ENDIF
	-@erase "$(INTDIR)\png.obj"
	-@erase "$(INTDIR)\pngerror.obj"
	-@erase "$(INTDIR)\pngget.obj"
	-@erase "$(INTDIR)\pngmem.obj"
	-@erase "$(INTDIR)\pngpread.obj"
	-@erase "$(INTDIR)\pngread.obj"
	-@erase "$(INTDIR)\pngrio.obj"
	-@erase "$(INTDIR)\pngrtran.obj"
	-@erase "$(INTDIR)\pngrutil.obj"
	-@erase "$(INTDIR)\pngset.obj"
	-@erase "$(INTDIR)\pngtrans.obj"
	-@erase "$(INTDIR)\pngw32.res"
	-@erase "$(INTDIR)\pngwio.obj"
	-@erase "$(INTDIR)\pngwrite.obj"
	-@erase "$(INTDIR)\pngwtran.obj"
	-@erase "$(INTDIR)\pngwutil.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\libpng13_debug.dll"
	-@erase "$(OUTDIR)\libpng13_debug.exp"
	-@erase "$(OUTDIR)\libpng13_debug.ilk"
	-@erase "$(OUTDIR)\libpng13_debug.lib"
	-@erase "$(OUTDIR)\libpng13_debug.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /ZI /Od /I "..\.." /I "$(PHP_INCLUDE_PATH)"  /I "..\..\..\zlib" /D "WIN32" /D "_DEBUG" /D "DEBUG" /D PNG_DEBUG=1 /D "PNG_USE_PNGVCRD" /D "PNG_BUILD_DLL" /D "ZLIB_DLL" /D "PNG_LIBPNG_SPECIALBUILD" /D "_CRT_SECURE_NO_WARNINGS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c

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

MTL=midl.exe
MTL_PROJ=/nologo /D "_DEBUG" /mktyplib203 /win32
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\pngw32.res" /i "..\.." /d "_DEBUG" /d PNG_DEBUG=1 /d PNG_LIBPNG_SPECIALBUILD=""""Use MMX instructions""""
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libpng.bsc"
BSC32_SBRS= \

LINK32=link.exe
LINK32_FLAGS=zlib.lib /nologo /dll /incremental:yes /pdb:"$(OUTDIR)\libpng13_debug.pdb" /debug /machine:I386 /def:"..\..\scripts\pngw32.def" /out:"$(OUTDIR)\libpng13_debug.dll" /implib:"$(OUTDIR)\libpng13_debug.lib" /libpath:"$(PHP_LIBRARY_PATH)"
DEF_FILE= \
	"..\..\scripts\pngw32.def"
LINK32_OBJS= \
	"$(INTDIR)\png.obj" \
	"$(INTDIR)\pngerror.obj" \
	"$(INTDIR)\pngget.obj" \
	"$(INTDIR)\pngmem.obj" \
	"$(INTDIR)\pngpread.obj" \
	"$(INTDIR)\pngread.obj" \
	"$(INTDIR)\pngrio.obj" \
	"$(INTDIR)\pngrtran.obj" \
	"$(INTDIR)\pngrutil.obj" \
	"$(INTDIR)\pngset.obj" \
	"$(INTDIR)\pngtrans.obj" \
	"$(INTDIR)\pngwio.obj" \
	"$(INTDIR)\pngwrite.obj" \
	"$(INTDIR)\pngwtran.obj" \
	"$(INTDIR)\pngwutil.obj" \
	"$(INTDIR)\pngw32.res"

"$(OUTDIR)\libpng13_debug.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "libpng - Win32 DLL VB"

OUTDIR=.\Win32_DLL_VB
INTDIR=.\Win32_DLL_VB
# Begin Custom Macros
OutDir=.\Win32_DLL_VB
# End Custom Macros

!IF "$(RECURSE)" == "0"

ALL : "$(OUTDIR)\libpng13vb.dll"

!ELSE

ALL : "$(OUTDIR)\libpng13vb.dll"

!ENDIF

!IF "$(RECURSE)" == "1"
CLEAN :
!ELSE
CLEAN :
!ENDIF
	-@erase "$(INTDIR)\png.obj"
	-@erase "$(INTDIR)\pngerror.obj"
	-@erase "$(INTDIR)\pngget.obj"
	-@erase "$(INTDIR)\pngmem.obj"
	-@erase "$(INTDIR)\pngpread.obj"
	-@erase "$(INTDIR)\pngread.obj"
	-@erase "$(INTDIR)\pngrio.obj"
	-@erase "$(INTDIR)\pngrtran.obj"
	-@erase "$(INTDIR)\pngrutil.obj"
	-@erase "$(INTDIR)\pngset.obj"
	-@erase "$(INTDIR)\pngtrans.obj"
	-@erase "$(INTDIR)\pngw32.res"
	-@erase "$(INTDIR)\pngwio.obj"
	-@erase "$(INTDIR)\pngwrite.obj"
	-@erase "$(INTDIR)\pngwtran.obj"
	-@erase "$(INTDIR)\pngwutil.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\libpng13vb.dll"
	-@erase "$(OUTDIR)\libpng13vb.exp"
	-@erase "$(OUTDIR)\libpng13vb.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /O2 /I "..\.." /I "$(PHP_INCLUDE_PATH)"  /I "..\..\..\zlib" /D "WIN32" /D "NDEBUG" /D "PNG_BUILD_DLL" /D "ZLIB_DLL" /D PNGAPI=__stdcall /D "PNG_NO_MODULEDEF" /D "PNG_LIBPNG_SPECIALBUILD" /D "_CRT_SECURE_NO_WARNINGS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c

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

MTL=midl.exe
MTL_PROJ=/nologo /D "NDEBUG" /mktyplib203 /win32
RSC=rc.exe
RSC_PROJ=/l 0x409 /fo"$(INTDIR)\pngw32.res" /i "..\.." /d "NDEBUG" /dPNG_LIBPNG_DLLFNAME_POSTFIX=""""VB"""" /dPNG_LIBPNG_SPECIALBUILD=""""__stdcall calling convention used for exported functions""""
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libpng.bsc"
BSC32_SBRS= \

LINK32=link.exe
LINK32_FLAGS=zlib_a.lib /nologo /dll /incremental:no /pdb:"$(OUTDIR)\libpng13vb.pdb" /machine:I386 /out:"$(OUTDIR)\libpng13vb.dll" /implib:"$(OUTDIR)\libpng13vb.lib" /libpath:"$(PHP_LIBRARY_PATH)"
LINK32_OBJS= \
	"$(INTDIR)\png.obj" \
	"$(INTDIR)\pngerror.obj" \
	"$(INTDIR)\pngget.obj" \
	"$(INTDIR)\pngmem.obj" \
	"$(INTDIR)\pngpread.obj" \
	"$(INTDIR)\pngread.obj" \
	"$(INTDIR)\pngrio.obj" \
	"$(INTDIR)\pngrtran.obj" \
	"$(INTDIR)\pngrutil.obj" \
	"$(INTDIR)\pngset.obj" \
	"$(INTDIR)\pngtrans.obj" \
	"$(INTDIR)\pngwio.obj" \
	"$(INTDIR)\pngwrite.obj" \
	"$(INTDIR)\pngwtran.obj" \
	"$(INTDIR)\pngwutil.obj" \
	"$(INTDIR)\pngw32.res"

"$(OUTDIR)\libpng13vb.dll" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

OutDir=.\Win32_DLL_VB
TargetName=libpng13vb
SOURCE="$(InputPath)"
DS_POSTBUILD_DEP=$(INTDIR)\postbld.dep

ALL : $(DS_POSTBUILD_DEP)

# Begin Custom Macros
OutDir=.\Win32_DLL_VB
# End Custom Macros

$(DS_POSTBUILD_DEP) : "$(OUTDIR)\libpng13vb.dll"
   echo    Deleting libpng13vb import library and export file (Not required for VB projects)
	del .\Win32_DLL_VB\libpng13vb.lib
	del .\Win32_DLL_VB\libpng13vb.exp
	echo Helper for Post-build step > "$(DS_POSTBUILD_DEP)"

!ELSEIF  "$(CFG)" == "libpng - Win32 LIB Release"

OUTDIR=.\Win32_LIB_Release
INTDIR=.\Win32_LIB_Release
# Begin Custom Macros
OutDir=.\Win32_LIB_Release
# End Custom Macros

!IF "$(RECURSE)" == "0"

ALL : "$(OUTDIR)\libpng.lib"

!ELSE

ALL : "$(OUTDIR)\libpng.lib"

!ENDIF

!IF "$(RECURSE)" == "1"
CLEAN :
!ELSE
CLEAN :
!ENDIF
	-@erase "$(INTDIR)\png.obj"
	-@erase "$(INTDIR)\pngerror.obj"
	-@erase "$(INTDIR)\pngget.obj"
	-@erase "$(INTDIR)\pngmem.obj"
	-@erase "$(INTDIR)\pngpread.obj"
	-@erase "$(INTDIR)\pngread.obj"
	-@erase "$(INTDIR)\pngrio.obj"
	-@erase "$(INTDIR)\pngrtran.obj"
	-@erase "$(INTDIR)\pngrutil.obj"
	-@erase "$(INTDIR)\pngset.obj"
	-@erase "$(INTDIR)\pngtrans.obj"
	-@erase "$(INTDIR)\pngwio.obj"
	-@erase "$(INTDIR)\pngwrite.obj"
	-@erase "$(INTDIR)\pngwtran.obj"
	-@erase "$(INTDIR)\pngwutil.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\libpng.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /O2 /I "..\.." /I "$(PHP_INCLUDE_PATH)"  /D "PNG_NO_MMX_CODE" /D "WIN32" /D "NDEBUG" /D "_CRT_SECURE_NO_WARNINGS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c

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
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libpng.bsc"
BSC32_SBRS= \

LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\libpng.lib"
LIB32_OBJS= \
	"$(INTDIR)\png.obj" \
	"$(INTDIR)\pngerror.obj" \
	"$(INTDIR)\pngget.obj" \
	"$(INTDIR)\pngmem.obj" \
	"$(INTDIR)\pngpread.obj" \
	"$(INTDIR)\pngread.obj" \
	"$(INTDIR)\pngrio.obj" \
	"$(INTDIR)\pngrtran.obj" \
	"$(INTDIR)\pngrutil.obj" \
	"$(INTDIR)\pngset.obj" \
	"$(INTDIR)\pngtrans.obj" \
	"$(INTDIR)\pngwio.obj" \
	"$(INTDIR)\pngwrite.obj" \
	"$(INTDIR)\pngwtran.obj" \
	"$(INTDIR)\pngwutil.obj"

"$(OUTDIR)\libpng.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "libpng - Win32 LIB Debug"

OUTDIR=.\Win32_LIB_Debug
INTDIR=.\Win32_LIB_Debug
# Begin Custom Macros
OutDir=.\Win32_LIB_Debug
# End Custom Macros

!IF "$(RECURSE)" == "0"

ALL : "$(OUTDIR)\libpngd.lib"

!ELSE

ALL : "$(OUTDIR)\libpngd.lib"

!ENDIF

!IF "$(RECURSE)" == "1"
CLEAN :
!ELSE
CLEAN :
!ENDIF
	-@erase "$(INTDIR)\png.obj"
	-@erase "$(INTDIR)\pngerror.obj"
	-@erase "$(INTDIR)\pngget.obj"
	-@erase "$(INTDIR)\pngmem.obj"
	-@erase "$(INTDIR)\pngpread.obj"
	-@erase "$(INTDIR)\pngread.obj"
	-@erase "$(INTDIR)\pngrio.obj"
	-@erase "$(INTDIR)\pngrtran.obj"
	-@erase "$(INTDIR)\pngrutil.obj"
	-@erase "$(INTDIR)\pngset.obj"
	-@erase "$(INTDIR)\pngtrans.obj"
	-@erase "$(INTDIR)\pngwio.obj"
	-@erase "$(INTDIR)\pngwrite.obj"
	-@erase "$(INTDIR)\pngwtran.obj"
	-@erase "$(INTDIR)\pngwutil.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\libpngd.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /ZI /Od /I "..\.." /I "$(PHP_INCLUDE_PATH)"  /D "WIN32" /D "_DEBUG" /D "DEBUG" /D "PNG_NO_MMX_CODE" /D PNG_DEBUG=1 /D "_CRT_SECURE_NO_WARNINGS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c

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
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libpng.bsc"
BSC32_SBRS= \

LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\libpngd.lib"
LIB32_OBJS= \
	"$(INTDIR)\png.obj" \
	"$(INTDIR)\pngerror.obj" \
	"$(INTDIR)\pngget.obj" \
	"$(INTDIR)\pngmem.obj" \
	"$(INTDIR)\pngpread.obj" \
	"$(INTDIR)\pngread.obj" \
	"$(INTDIR)\pngrio.obj" \
	"$(INTDIR)\pngrtran.obj" \
	"$(INTDIR)\pngrutil.obj" \
	"$(INTDIR)\pngset.obj" \
	"$(INTDIR)\pngtrans.obj" \
	"$(INTDIR)\pngwio.obj" \
	"$(INTDIR)\pngwrite.obj" \
	"$(INTDIR)\pngwtran.obj" \
	"$(INTDIR)\pngwutil.obj"

"$(OUTDIR)\libpngd.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "libpng - Win32 LIB ASM Release"

OUTDIR=.\Win32_LIB_ASM_Release
INTDIR=.\Win32_LIB_ASM_Release
# Begin Custom Macros
OutDir=.\Win32_LIB_ASM_Release
# End Custom Macros

!IF "$(RECURSE)" == "0"

ALL : "$(OUTDIR)\libpng.lib"

!ELSE

ALL : "$(OUTDIR)\libpng.lib"

!ENDIF

!IF "$(RECURSE)" == "1"
CLEAN :
!ELSE
CLEAN :
!ENDIF
	-@erase "$(INTDIR)\png.obj"
	-@erase "$(INTDIR)\pngerror.obj"
	-@erase "$(INTDIR)\pngget.obj"
	-@erase "$(INTDIR)\pngmem.obj"
	-@erase "$(INTDIR)\pngpread.obj"
	-@erase "$(INTDIR)\pngread.obj"
	-@erase "$(INTDIR)\pngrio.obj"
	-@erase "$(INTDIR)\pngrtran.obj"
	-@erase "$(INTDIR)\pngrutil.obj"
	-@erase "$(INTDIR)\pngset.obj"
	-@erase "$(INTDIR)\pngtrans.obj"
	-@erase "$(INTDIR)\pngwio.obj"
	-@erase "$(INTDIR)\pngwrite.obj"
	-@erase "$(INTDIR)\pngwtran.obj"
	-@erase "$(INTDIR)\pngwutil.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\libpng.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MD /W3 /O2 /I "..\.."  /I "$(PHP_INCLUDE_PATH)"  /D "WIN32" /D "NDEBUG" /D "PNG_USE_PNGVCRD" /D "PNG_LIBPNG_SPECIALBUILD" /D "_CRT_SECURE_NO_WARNINGS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c

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
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libpng.bsc"
BSC32_SBRS= \

LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\libpng.lib"
LIB32_OBJS= \
	"$(INTDIR)\png.obj" \
	"$(INTDIR)\pngerror.obj" \
	"$(INTDIR)\pngget.obj" \
	"$(INTDIR)\pngmem.obj" \
	"$(INTDIR)\pngpread.obj" \
	"$(INTDIR)\pngread.obj" \
	"$(INTDIR)\pngrio.obj" \
	"$(INTDIR)\pngrtran.obj" \
	"$(INTDIR)\pngrutil.obj" \
	"$(INTDIR)\pngset.obj" \
	"$(INTDIR)\pngtrans.obj" \
	"$(INTDIR)\pngwio.obj" \
	"$(INTDIR)\pngwrite.obj" \
	"$(INTDIR)\pngwtran.obj" \
	"$(INTDIR)\pngwutil.obj"

"$(OUTDIR)\libpng.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ELSEIF  "$(CFG)" == "libpng - Win32 LIB ASM Debug"

OUTDIR=.\Win32_LIB_ASM_Debug
INTDIR=.\Win32_LIB_ASM_Debug
# Begin Custom Macros
OutDir=.\Win32_LIB_ASM_Debug
# End Custom Macros

!IF "$(RECURSE)" == "0"

ALL : "$(OUTDIR)\libpng_debug.lib"

!ELSE

ALL : "$(OUTDIR)\libpng_debug.lib"

!ENDIF

!IF "$(RECURSE)" == "1"
CLEAN :
!ELSE
CLEAN :
!ENDIF
	-@erase "$(INTDIR)\png.obj"
	-@erase "$(INTDIR)\pngerror.obj"
	-@erase "$(INTDIR)\pngget.obj"
	-@erase "$(INTDIR)\pngmem.obj"
	-@erase "$(INTDIR)\pngpread.obj"
	-@erase "$(INTDIR)\pngread.obj"
	-@erase "$(INTDIR)\pngrio.obj"
	-@erase "$(INTDIR)\pngrtran.obj"
	-@erase "$(INTDIR)\pngrutil.obj"
	-@erase "$(INTDIR)\pngset.obj"
	-@erase "$(INTDIR)\pngtrans.obj"
	-@erase "$(INTDIR)\pngwio.obj"
	-@erase "$(INTDIR)\pngwrite.obj"
	-@erase "$(INTDIR)\pngwtran.obj"
	-@erase "$(INTDIR)\pngwutil.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\libpng_debug.lib"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP=cl.exe
CPP_PROJ=/nologo /MDd /W3 /Gm /ZI /Od /I "..\.." /I "$(PHP_INCLUDE_PATH)"  /D "WIN32" /D "_DEBUG" /D "DEBUG" /D PNG_DEBUG=1 /D "PNG_USE_PNGVCRD" /D "PNG_LIBPNG_SPECIALBUILD" /D "_CRT_SECURE_NO_WARNINGS" /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c

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
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\libpng.bsc"
BSC32_SBRS= \

LIB32=link.exe -lib
LIB32_FLAGS=/nologo /out:"$(OUTDIR)\libpng_debug.lib"
LIB32_OBJS= \
	"$(INTDIR)\png.obj" \
	"$(INTDIR)\pngerror.obj" \
	"$(INTDIR)\pngget.obj" \
	"$(INTDIR)\pngmem.obj" \
	"$(INTDIR)\pngpread.obj" \
	"$(INTDIR)\pngread.obj" \
	"$(INTDIR)\pngrio.obj" \
	"$(INTDIR)\pngrtran.obj" \
	"$(INTDIR)\pngrutil.obj" \
	"$(INTDIR)\pngset.obj" \
	"$(INTDIR)\pngtrans.obj" \
	"$(INTDIR)\pngwio.obj" \
	"$(INTDIR)\pngwrite.obj" \
	"$(INTDIR)\pngwtran.obj" \
	"$(INTDIR)\pngwutil.obj"

"$(OUTDIR)\libpng_debug.lib" : "$(OUTDIR)" $(DEF_FILE) $(LIB32_OBJS)
    $(LIB32) @<<
  $(LIB32_FLAGS) $(DEF_FLAGS) $(LIB32_OBJS)
<<

!ENDIF


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("libpng_php.dep")
!INCLUDE "libpng_php.dep"
!ELSE
!MESSAGE Warning: cannot find "libpng_php.dep"
!ENDIF
!ENDIF


!IF "$(CFG)" == "libpng - Win32 DLL Release" || "$(CFG)" == "libpng - Win32 DLL Debug" || "$(CFG)" == "libpng - Win32 DLL ASM Release" || "$(CFG)" == "libpng - Win32 DLL ASM Debug" || "$(CFG)" == "libpng - Win32 DLL VB" || "$(CFG)" == "libpng - Win32 LIB Release" || "$(CFG)" == "libpng - Win32 LIB Debug" || "$(CFG)" == "libpng - Win32 LIB ASM Release" || "$(CFG)" == "libpng - Win32 LIB ASM Debug"
SOURCE=..\..\png.c

"$(INTDIR)\png.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngerror.c

"$(INTDIR)\pngerror.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngget.c

"$(INTDIR)\pngget.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngmem.c

"$(INTDIR)\pngmem.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngpread.c

"$(INTDIR)\pngpread.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngread.c

"$(INTDIR)\pngread.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngrio.c

"$(INTDIR)\pngrio.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngrtran.c

"$(INTDIR)\pngrtran.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngrutil.c

"$(INTDIR)\pngrutil.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngset.c

"$(INTDIR)\pngset.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngtrans.c

"$(INTDIR)\pngtrans.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngwio.c

"$(INTDIR)\pngwio.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngwrite.c

"$(INTDIR)\pngwrite.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngwtran.c

"$(INTDIR)\pngwtran.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\pngwutil.c

"$(INTDIR)\pngwutil.obj" : $(SOURCE) "$(INTDIR)"
	$(CPP) $(CPP_PROJ) $(SOURCE)


SOURCE=..\..\scripts\pngw32.rc

!IF  "$(CFG)" == "libpng - Win32 DLL Release"


"$(INTDIR)\pngw32.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\pngw32.res" /i "..\.." /i "\php4build\libs_build\lpng1229\scripts" /d "NDEBUG" $(SOURCE)


!ELSEIF  "$(CFG)" == "libpng - Win32 DLL Debug"


"$(INTDIR)\pngw32.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\pngw32.res" /i "..\.." /i "\php4build\libs_build\lpng1229\scripts" /d "_DEBUG" /d PNG_DEBUG=1 $(SOURCE)


!ELSEIF  "$(CFG)" == "libpng - Win32 DLL ASM Release"


"$(INTDIR)\pngw32.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\pngw32.res" /i "..\.." /i "\php4build\libs_build\lpng1229\scripts" /d "NDEBUG" /d PNG_LIBPNG_SPECIALBUILD=""""Use MMX instructions"""" $(SOURCE)


!ELSEIF  "$(CFG)" == "libpng - Win32 DLL ASM Debug"


"$(INTDIR)\pngw32.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\pngw32.res" /i "..\.." /i "\php4build\libs_build\lpng1229\scripts" /d "_DEBUG" /d PNG_DEBUG=1 /d PNG_LIBPNG_SPECIALBUILD=""""Use MMX instructions"""" $(SOURCE)


!ELSEIF  "$(CFG)" == "libpng - Win32 DLL VB"


"$(INTDIR)\pngw32.res" : $(SOURCE) "$(INTDIR)"
	$(RSC) /l 0x409 /fo"$(INTDIR)\pngw32.res" /i "..\.." /i "\php4build\libs_build\lpng1229\scripts" /d "NDEBUG" /dPNG_LIBPNG_DLLFNAME_POSTFIX=""""VB"""" /dPNG_LIBPNG_SPECIALBUILD=""""__stdcall calling convention used for exported functions"""" $(SOURCE)


!ELSEIF  "$(CFG)" == "libpng - Win32 LIB Release"

!ELSEIF  "$(CFG)" == "libpng - Win32 LIB Debug"

!ELSEIF  "$(CFG)" == "libpng - Win32 LIB ASM Release"

!ELSEIF  "$(CFG)" == "libpng - Win32 LIB ASM Debug"

!ENDIF

!IF  "$(CFG)" == "libpng - Win32 DLL Release"

!ELSEIF  "$(CFG)" == "libpng - Win32 DLL Debug"

!ELSEIF  "$(CFG)" == "libpng - Win32 DLL ASM Release"

!ELSEIF  "$(CFG)" == "libpng - Win32 DLL ASM Debug"

!ELSEIF  "$(CFG)" == "libpng - Win32 DLL VB"

!ELSEIF  "$(CFG)" == "libpng - Win32 LIB Release"

!ELSEIF  "$(CFG)" == "libpng - Win32 LIB Debug"

!ELSEIF  "$(CFG)" == "libpng - Win32 LIB ASM Release"

!ELSEIF  "$(CFG)" == "libpng - Win32 LIB ASM Debug"

!ENDIF


!ENDIF

