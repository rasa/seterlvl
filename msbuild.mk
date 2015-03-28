all:
	MSBuild.exe /nologo seterlvl.sln /p:Configuration=Debug
	MSBuild.exe /nologo seterlvl.sln /p:Configuration=Release

clean:
	MSBuild.exe /nologo seterlvl.sln /p:Configuration=Debug   /t:clean
	MSBuild.exe /nologo seterlvl.sln /p:Configuration=Release /t:clean

upgrade:
	devenv seterlvl.sln /upgrade
	
.PHONY:	all clean upgrade


