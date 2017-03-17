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
* [calendar](http://php.net/manual/en/book.calendar.php)
* [curl](http://php.net/manual/en/book.curl.php)
* [DOM](http://php.net/manual/en/book.dom.php)
* [exif](http://php.net/manual/en/book.exif.php)
* [fileinfo](http://php.net/manual/en/book.fileinfo.php)
* [ftp](http://php.net/manual/en/book.ftp.php)
* [GD](http://php.net/manual/en/book.image.php)
* [Gettext](http://php.net/manual/en/book.gettext.php)
* [iconv](http://php.net/manual/en/book.iconv.php)
* [intl](http://php.net/manual/en/book.intl.php)
* [JSON](http://php.net/manual/en/book.json.php)
* [libxml](http://php.net/manual/en/book.libxml.php)
* [mbstring](http://php.net/manual/en/book.mbstring.php)
* [PCRE](http://php.net/manual/en/book.pcre.php)
* [PDO](http://php.net/manual/en/book.pdo.php) with [PDO_SQLITE](http://php.net/manual/en/ref.pdo-sqlite.php) driver
* [POSIX](http://php.net/manual/en/book.posix.php)
* [Mhash](http://php.net/manual/en/book.mhash.php)
* [Mysqlnd](http://php.net/manual/en/book.mysqlnd.php)
* [OpenSSL](http://php.net/manual/en/book.openssl.php)
* [SimpleXML](http://php.net/manual/en/book.simplexml.php)
* [Semaphore](http://php.net/manual/en/book.sem.php)
* [shmop](http://php.net/manual/en/book.shmop.php)
* [Sockets](http://php.net/manual/en/book.sockets.php)
* [SQLite3](http://php.net/manual/en/book.sqlite3.php)
* [XML Parser](http://php.net/manual/en/book.xml.php)
* [XMLReader](http://php.net/manual/en/book.xmlreader.php)
* [XMLWriter](http://php.net/manual/en/book.xmlwriter.php)
* [XSL](http://php.net/manual/en/book.xsl.php)
* [Zip](http://php.net/manual/en/book.zip.php)
* [Zlib](http://php.net/manual/en/book.zlib.php)
* [Bzip2](http://php.net/manual/en/book.bzip2.php)

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

```bash
FROM phpearth/php

RUN install-php-ext libsodium
```

## Supported Extensions

PHP extensions:

* [mcrypt](http://php.net/manual/en/book.mcrypt.php)
* [soap](http://php.net/manual/en/extensions.php)
* [pcntl](http://php.net/manual/en/book.pcntl.php)
* [mysqli](http://php.net/manual/en/book.mysqli.php)
* [pdo_mysql](http://php.net/manual/en/ref.pdo-mysql.php)

PECL extensions:

* [Libsodium](https://github.com/jedisct1/libsodium-php)
* [Redis](https://github.com/phpredis/phpredis/)
* [Swoole](https://github.com/swoole/swoole-src)

## Unsupported Extensions

* [Apache](http://php.net/manual/en/book.apache.php)
* [COM](http://php.net/manual/en/book.com.php)
* [ctype](http://php.net/manual/en/book.ctype.php)
* [DBA](http://php.net/manual/en/book.dba.php)
* [Firebird/Interbase](http://php.net/manual/en/book.ibase.php)
* [GMP](http://php.net/manual/en/book.gmp.php)
* [Imagick](http://php.net/manual/en/book.imagick.php)
* [Informix](http://php.net/manual/en/book.ifx.php)
* [IMAP](http://php.net/manual/en/book.imap.php)
* [Enchant](http://php.net/manual/en/book.enchant.php)
* [Frontbase](http://php.net/manual/en/book.fbsql.php)
* [msql](http://php.net/manual/en/book.msql.php)
* [LDAP](http://php.net/manual/en/book.ldap.php)
* [NSAPI](http://php.net/manual/en/book.nsapi.php)
* [OCI8](http://php.net/manual/en/book.oci8.php)
* [ODBC](http://php.net/manual/en/book.uodbc.php)
* [PostgreSQL](http://php.net/manual/en/book.pgsql.php)
* [Pspell](http://php.net/manual/en/book.pspell.php)
* [Readline](http://php.net/manual/en/book.readline.php)
* [Recode](http://php.net/manual/en/book.recode.php)
* [SNMP](http://php.net/manual/en/book.snmp.php)
* [Tidy](http://php.net/manual/en/book.tidy.php)
* [WDDX](http://php.net/manual/en/book.wddx.php)
* [Sybase](http://php.net/manual/en/book.sybase.php)
* [XML-RPC](http://php.net/manual/en/book.xmlrpc.php)

## See Also

* [PHP Extensions List/Categorization](http://php.net/manual/en/extensions.php)
