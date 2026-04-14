
This project is a set of small scripts to handle clone, patch, build and installation of wine to try to run paint.net 4 and 5

Project repo: https://github.com/bluesillybeard/Paint.NETOnWine

Note that this is a very unstable version. expect NOTHING to work. this scripts do not mai

It is expected that you have installed required dependencies to build wine (see https://gitlab.winehq.org/wine/wine/-/wikis/Building-Wine#satisfying-build-dependencies)
You should also have [Winetricks](https://github.com/winetricks/winetricks) installed

## Installation

- Clone this
- run `./install.sh`

It will take a long time to build wine. \
Afterward, a wine prefix will be created. dotnet48 will prompt you to get installed

## Running
once installed you can just run `./wine path/to/your/paintdotnet.exe`
