# PHP Extensions

There are multiple types of extensions for PHP. PHP extensions are the ones
located in the [php-src](https://github.com/php/php-src) repository directly and
have the following installation procedure:

```bash
# Let's say php source code is located in /usr/src/php
cd /usr/src/php/ext/extension-name
phpize
./configure
make -jN
make -jN install
```

* Core Extensions

  Core extensions are already included in PHP itself and cannot be left out of a
  PHP binary.

* Bundled Extensions

  Bundled extensions don't require additional libraries for compiling.

* External Extensions

  External extensions require additional libraries for compiling.

## Pecl Extensions

Pecl extensions are either some of the PHP core extensions that got moved to pecl
or the community contributed ones. They are located on pecl.php.net. Installation
is done with the simple `pecl install` command:

```bash
pecl install {extension-name}
```

## Pre-installed Extensions

By default these images come with some pre-installed PHP extensions that are
required to run some every day PHP applications. These include the following:

* [bcmath](http://php.net/manual/en/book.bc.php)
* [Bzip2](http://php.net/manual/en/book.bzip2.php)
* [calendar](http://php.net/manual/en/book.calendar.php)
* [ctype](http://php.net/manual/en/book.ctype.php)
* [curl](http://php.net/manual/en/book.curl.php)
* [DOM](http://php.net/manual/en/book.dom.php)
* [exif](http://php.net/manual/en/book.exif.php)
* [fileinfo](http://php.net/manual/en/book.fileinfo.php)
* [filter](http://php.net/manual/en/book.filter.php)
* [ftp](http://php.net/manual/en/book.ftp.php)
* [hash](http://php.net/manual/en/book.hash.php)
* [iconv](http://php.net/manual/en/book.iconv.php)
* [JSON](http://php.net/manual/en/book.json.php)
* [libxml](http://php.net/manual/en/book.libxml.php)
* [mbstring](http://php.net/manual/en/book.mbstring.php)
* [PCRE](http://php.net/manual/en/book.pcre.php)
* [PDO](http://php.net/manual/en/book.pdo.php) with [PDO_SQLITE](http://php.net/manual/en/ref.pdo-sqlite.php) driver
* [POSIX](http://php.net/manual/en/book.posix.php)
* [Mhash](http://php.net/manual/en/book.mhash.php)
* [Mysqlnd](http://php.net/manual/en/book.mysqlnd.php)
* [OpenSSL](http://php.net/manual/en/book.openssl.php)
* [readline](http://php.net/manual/en/book.readline.php)
* [SimpleXML](http://php.net/manual/en/book.simplexml.php)
* [Semaphore](http://php.net/manual/en/book.sem.php)
* [shmop](http://php.net/manual/en/book.shmop.php)
* [Sockets](http://php.net/manual/en/book.sockets.php)
* [SQLite3](http://php.net/manual/en/book.sqlite3.php)
* [tokenizer](http://php.net/manual/en/book.tokenizer.php)
* [XML Parser](http://php.net/manual/en/book.xml.php)
* [XMLReader](http://php.net/manual/en/book.xmlreader.php)
* [XMLWriter](http://php.net/manual/en/book.xmlwriter.php)
* [Zip](http://php.net/manual/en/book.zip.php)
* [Zlib](http://php.net/manual/en/book.zlib.php)

## Installing Extensions

However many times you'll want to install some other PHP extension as well.

Here's how to install them.

These Docker images include a custom installation script for extensions
`install-php-ext` which does some magic and installs any of the above explained
extensions.

```bash
install-php-ext {extension-name}
```

To install create a Dockerfile for your application and use the script in the following way:

```Dockerfile
FROM petk/php

RUN install-php-ext libsodium
```

## Supported Extensions

PHP extensions:

* [dba](http://php.net/manual/en/book.dba.php)
* [enchant](http://php.net/manual/en/book.enchant.php)
* [gettext](http://php.net/manual/en/book.gettext.php)
* [gd](http://php.net/manual/en/book.image.php)
* [gmp](http://php.net/manual/en/book.gmp.php)
* [imap](http://php.net/manual/en/book.imap.php)
* [intl](http://php.net/manual/en/book.intl.php)
* [ldap](http://php.net/manual/en/book.ldap.php)
* [mcrypt](http://php.net/manual/en/book.mcrypt.php)
* [mysqli](http://php.net/manual/en/book.mysqli.php)
* [pcntl](http://php.net/manual/en/book.pcntl.php)
* [pdo_mysql](http://php.net/manual/en/ref.pdo-mysql.php)
* [pdo_pgsql](http://php.net/manual/en/ref.pdo-pgsql.php)
* [PostgreSQL](http://php.net/manual/en/book.pgsql.php)
* [pspell](http://php.net/manual/en/book.pspell.php)
* [recode](http://php.net/manual/en/book.recode.php)
* [snmp](http://php.net/manual/en/book.snmp.php)
* [soap](http://php.net/manual/en/extensions.php)
* [tidy](http://php.net/manual/en/book.tidy.php)
* [wddx](http://php.net/manual/en/book.wddx.php)
* [xmlrpc](http://php.net/manual/en/book.xmlrpc.php)
* [xsl](http://php.net/manual/en/book.xsl.php)

PECL extensions:

* [apcu](https://pecl.php.net/package/APCu)
* [imagick](https://pecl.php.net/package/imagick)
* [libsodium](https://pecl.php.net/package/libsodium)
* [memcached](https://pecl.php.net/package/memcached)
* [mongodb](https://pecl.php.net/package/mongodb)
* [redis](https://pecl.php.net/package/redis)
* [swoole](https://pecl.php.net/package/swoole)
* [xdebug](https://pecl.php.net/package/xdebug)

## See Also

* [PHP Extensions List/Categorization](http://php.net/manual/en/extensions.php)
