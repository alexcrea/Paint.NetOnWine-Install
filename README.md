
This project is a set of small scripts to handle clone, patch, build and installation of a patched wine to try to run paint.net 4 and 5

Patchs repo: https://github.com/bluesillybeard/Paint.NETOnWine

Note that this is a very unstable version. **expect NOTHING to work** \
It is not ready for the general public and should only be used for developement purpose

It is expected that you have installed required dependencies to build wine (see https://gitlab.winehq.org/wine/wine/-/wikis/Building-Wine#satisfying-build-dependencies)
You should also have [Winetricks](https://github.com/winetricks/winetricks) installed

It will install the modified wine inside ./install so should not impact your systemwise wine

As per the paint.net developer wish, These scripts won't be providing you old version of wine. You may find some in known archive site but run them at your own risk
Not that the this installation assume you are using either a portable version of paint.net (prefered) or a cpu specific installer. "anycpu" installer require dotnet48 \
you can likely install it in the prefix with `./winetricks dotnet48`. but you should not and may require wow64

**DO NOT** send bug report to the paint.net developer. do not waste his time\
It is a community project issues should be handled in the [patch repo](https://github.com/bluesillybeard/Paint.NETOnWine)

## Installation

- Clone this `git clone https://github.com/alexcrea/Paint.NetOnWine-Install wine-pdn`
- Run `cd wine-pdn` then `./install.sh`

It will take a long time to build wine

The install.sh script is currently not made with being run twice in mind \
You likely need to `git reset --hard` and `git clean -f ` inside the source folder 

## Running
once installed you can just run `./wine path/to/your/paintdotnet.exe`

## Scripts
- `install.sh` try to prepare and install wine then, create prefix 
- `makeinstall.sh` run make and install wine 64
- `apply-patchs.sh` apply all patchs from paint.net on wine to the local wine source
- `configure.sh` configure wine build folder (./build/64)
- `createprefix.sh` create prefix and install required rependencies

- `wine` small script to run the modified wine on the created prefix from this directory
- `winetricks` small script to run winetrict with the modified wine and the prefix

