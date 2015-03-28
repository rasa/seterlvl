all:
	VCBuild.exe /nologo seterlvl.vcproj /rebuild

clean:
	VCBuild.exe /nologo seterlvl.vcproj /clean
	
upgrade:
	devenv seterlvl.sln /upgrade

.PHONY:	all clean upgrade

