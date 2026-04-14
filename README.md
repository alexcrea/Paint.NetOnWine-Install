
This project is a set of small scripts to handle clone, patch, build and installation of wine to try to run paint.net 4 and 5

Project repo: https://github.com/bluesillybeard/Paint.NETOnWine

Note that this is a very unstable version. **expect NOTHING to work** \
It is not ready for the general public and should only be used for developement purpose

It is expected that you have installed required dependencies to build wine (see https://gitlab.winehq.org/wine/wine/-/wikis/Building-Wine#satisfying-build-dependencies)
You should also have [Winetricks](https://github.com/winetricks/winetricks) installed

It will install the modified version of wine inside ./install so should not impact your systemwise wine

## Installation

- Clone this `git clone https://github.com/alexcrea/Paint.NetOnWine-Install`
- run `./install.sh`

It will take a long time to build wine. \
Afterward, a wine prefix will be created. dotnet48 will prompt you to get installed

The install script was not made with being run twice in mind. likely need to `git reset --hard` inside the source folder 

## Running
once installed you can just run `./wine path/to/your/paintdotnet.exe`

## Scripts
- `install.sh` try to prepare and install wine then, create prefix 
- `makeinstall.sh` run make and install wine 64
- `makeinstall-all.sh` run and and install wine 64 & 32 for wow64
- `apply-patchs.sh` apply all patchs from paint.net on wine to the local wine source
- `configure.sh` configure wine build folder (./build/64 and ./build/32)
- `createprefix.sh` create prefix and install required rependencies

- `wine` small script to run the modified wine on the created prefix from this directory
- `winetricks` small script to run winetrict with the modified wine and the prefix

