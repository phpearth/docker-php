# Changelog

All notable changes to this project will be documented in this file. This project
[keeps a CHANGELOG](http://keepachangelog.com/) and adheres to
[Semantic Versioning](http://semver.org/).


## [UNREALEASED] 2017-01-01

* ...

## [1.0.3] 2017-06-03

* OpenLiteSpeed 1.4.26
* New tag added for OpenLiteSpeed on Alpine
* Use `-O3` optimization level for GCC when compiling PHP
* Move intl, xsl and gettext PHP extensions to installation script
* Optimize Debian images size

## [1.0.2] 2017-05-29

* Improved script for downloading PHP extensions
* Fixed minor bug in script for downloading Composer
* Removed bash from Alpine Docker images
* Refactor Dockerfiles
* PHP GD extension moved to installation script

## [1.0.1] 2017-05-27

* Refactored Docker tags
* Upgraded to Alpine 3.6 base images
* Installation script for Composer and Prestissimo plugin for parallel downloading
  of PHP packages

## [1.0.0] 2017-05-13

* Repository refactored
* PHP 7.1.5

## [0.0.9] 2017-04-13

* PHP 7.1.4

## [0.0.8] 2017-04-01

* Xdebug extension

## [0.0.7] 2017-04-01

* Fixed OpenLiteSpeed installation dependencies

## [0.0.6] 2017-04-01

* Added support for multiple PHP extensions
* Documentation improvements
* Composer removed from base images

## [0.0.5] 2017-03-31

* xmlrpc support
* postgresql and pdo_pgsql support
* gmp support
* recode support

## [0.0.4] 2017-03-28

* The imagick PECL extension support

## [0.0.3] 2017-03-27

* The memcached extension support

## [0.0.2] 2017-03-21

* Tidy extension support
* WDDX extension support

## [0.0.1] 2017-03-20

* Initial release with PHP 7.1.3
