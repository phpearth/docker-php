# Changelog

All notable changes to this project will be documented in this file. This project
[keeps a CHANGELOG](http://keepachangelog.com/) and adheres to
[Semantic Versioning](http://semver.org/).

## [UNREALEASED] 2018-01-01

* PHP 7.0.27
* PHP 7.1.13
* PHP 7.2.1
* ...

## [1.2.3] 2018-01-03

* Alpine 3.7
* PHP 7.2.0 stable
* Fix OpenLiteSpeed images to run the server properly
* Expose important web server ports in Docker images
* New Lighttpd web server images

## [1.2.2] 2017-11-22

* PHP 7.2.0RC6
* PHP 7.1.12
* PHP 7.0.26
* OpenLiteSpeed 1.4.28

## [1.2.1] 2017-10-29

* Add phar extension to all Docker images except minimal ones.
* Use PHP.earth Alpine packages with custom compiler optimization flags.

## [1.2.0] 2017-10-25

* PHP 7.2.0RC5
* PHP 7.1.11
* PHP 7.0.25
* New images with only PHP CLI from PHP.earth Alpine repos
* Alpine repository moved to its own [location](https://github.com/php-earth/alpine)
  and repository folder structure refactored

## [1.1.3] 2017-10-01

* Refactored PHP APKBUILD files
* PHPUnit 6.3.1
* Fixed bug with PHP bundled libgd not working with provided GNU libiconv package:
  ```
  PHP Warning:  PHP Startup: Unable to load dynamic library '/usr/lib/php/7.1/modules/gd.so' - Error relocating /usr/lib/php/7.1/modules/gd.so: libiconv: symbol not found in Unknown on line )
  ```
* PHP 7.0.24
* PHP 7.1.10
* PHP 7.2.0RC3
* Swoole 1.9.21
* PECL Libsodium 2.0.8
* PECL Redis 3.1.4
* [Apache bug fixed](https://github.com/php-earth/docker-php/issues/4)

## [1.1.2] 2017-09-20

* Swoole 1.9.20
* OpenLiteSpeed 1.4.27
* PHP 7.2.0 RC2
* PHP 7.1.9
* PHP 7.0.23
* MongoDB 1.3.0
* Composer 1.5.2
* [iconv bug fix](https://github.com/php-earth/docker-php/issues/3)

## [1.1.1] 2017-08-14

* Refactor and fix multiple issues with Alpine repository packages
* Swoole 1.9.18
* PHPUnit 6.3.0
* Composer 1.5.1
* PHP 7.2.0 beta 2
* PHP 7.1.8
* PHP 7.0.22
* New tests

## [1.1.0] 2017-07-06

* Debian based images removed in favor of Alpine for smallest possible sizes
* Introducing PHP.earth Alpine repository

## [1.0.5] 2017-06-20

* Apache HTTP Server
* PHP CGI
* Refactored and stabilized Docker tags
* Improved documentation
* Tests

## [1.0.4] 2017-06-12

* Repository location refactored
* PEAR removed
* PHP 7.2.0alpha1
* Composer installation script with optional prestissimo plugin

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
