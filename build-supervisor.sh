#!/bin/sh
version="3.0b1"
package="supervisor-$version.tar.gz"

rm -rf BUILD RPMS SRPMS tmp || true
mkdir -p BUILD RPMS SRPMS SOURCES

if [ ! -f SOURCES/$package ];
then
	wget "http://pypi.python.org/packages/source/s/supervisor/$package" -O SOURCES/$package
	cp -f supervisord* SOURCES/
        cp -f supervisor.logrotate SOURCES/
fi

rpmbuild -ba --define="_topdir $PWD" --define="_tmppath $PWD/tmp" --define="ver $version" supervisor.spec
