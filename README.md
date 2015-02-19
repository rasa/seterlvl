seterlvl - Version 1.1 - Jul 19 2006
Copyright (c) 2005-2006 Ross Smith II (http://smithii.com) All Rights Reserved

------------------------------------------------------------------------------

Usage: seterlvl [options] errorlevel

errorlevel can be from -4294967295 to 4294967295

Options:
-v | --version       Show version and copyright information and quit
-? | --help          Show this help message and quit

Examples:

C:\>echo %errorlevel%
0

C:\>seterlvl.exe 1

C:\>echo %errorlevel%
1

C:\>seterlvl.exe 2147483647

C:\>echo %errorlevel%
2147483647

C:\>seterlvl.exe 2147483648

C:\>echo %errorlevel%
-2147483648

C:\>seterlvl.exe 4294967295

C:\>echo %errorlevel%
-1

C:\>seterlvl.exe -1

C:\>echo %errorlevel%
-1

C:\>seterlvl.exe -4294967295

C:\>echo %errorlevel%
1

C:\>seterlvl.exe 0

C:\>echo %errorlevel%
0

------------------------------------------------------------------------------

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

$Id$
