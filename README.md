# seterlvl 

Set the errorlevel and exit

## Usage

````
seterlvl [options] errorlevel

errorlevel can be from -4294967295 to 4294967295

Options:
-v | --version       Show version and copyright information and quit
-? | --help          Show this help message and quit
````

## Examples

````
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
````

## Contributing

To contribute to this project, please see [CONTRIBUTING.md](CONTRIBUTING.md).

## Bugs

To view existing bugs, or report a new bug, please see the [issues](/issues) page for this project.

## License

This project is [MIT licensed](LICENSE).

## Changelog

Please see [CHANGELOG.md](CHANGELOG.md) for the version history for this project.

## Contact

This project was originally developed by [Ross Smith II](mailto:ross@smithii.com).
Any enhancements and suggestions are welcome.
