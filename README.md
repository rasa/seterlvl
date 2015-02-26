# seterlvl [![Flattr this][flatter_png]][flatter]

Set the errorlevel and exit.

## Usage

````
seterlvl [options] errorlevel

errorlevel can be from -4294967295 to 4294967295

Options:
-v | --version       Show version and copyright information and quit
-? | --help          Show this help message and quit
````

## Examples

````batch
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

To view existing bugs, or report a new bug, please see [issues](../../issues).

## Changelog

To view the version history for this project, please see [CHANGELOG.md](CHANGELOG.md).

## License

This project is [MIT licensed](LICENSE).

## Contact

This project was created and is maintained by [Ross Smith II][] [![endorse][endorse_png]][endorse]

Feedback, suggestions, and enhancements are welcome.

[Ross Smith II]: mailto:ross@smithii.com "ross@smithii.com"
[flatter]: https://flattr.com/submit/auto?user_id=rasa&url=https%3A%2F%2Fgithub.com%2Frasa%2Fseterlvl
[flatter_png]: http://button.flattr.com/flattr-badge-large.png "Flattr this"
[endorse]: https://coderwall.com/rasa
[endorse_png]: https://api.coderwall.com/rasa/endorsecount.png "endorse"

