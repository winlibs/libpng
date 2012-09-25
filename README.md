# libpng

## Available prebuilt libraries

All prebuilt libraries are available in the php-libs
[repositories](http://windows.php.net/downloads/php-sdk/deps/)

# Building for PHP

## Requirements

  * LibPNG sources [http://www.libpng.org](http://www.libpng.org)

  * Zlib sources [http://zlib.net/](http://zlib.net/)

  * Common tools used to compile PHP

## Configuration

LibPNG can be compiled using various modes. Only the following list can be used with PHP:

  * Dll Debug
  * Dll Release
  * Lib Debug
  * Lib Release

## Compile

Compilation is easy done using MSBuild.exe. Put zlib sources into the "zlib" sibling directory relative to the libpng sources and ivoke the following commands 

    cd projects\php_build_vc9
    msbuild /property:Configuration="Lib Release" property:Platform=Win32 libpng.sln 
