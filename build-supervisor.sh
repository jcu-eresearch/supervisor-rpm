#!/bin/sh
version="3.0"
package="supervisor-$version.tar.gz"

sudo yum install -y \
    rpm-build \
    rpmdevtools \
    yum-utils


rm -rf BUILD RPMS SRPMS tmp || true
mkdir -p BUILD RPMS SRPMS SOURCES

sudo yum-builddep -y supervisor.spec

if [ ! -f SOURCES/$package ]; then
    cp -f supervisord* SOURCES/
    cp -f supervisor.logrotate SOURCES/
fi

spectool -g --directory=$PWD/SOURCES --define="_topdir $PWD" --define="_tmppath $PWD/tmp" --define="ver $version" supervisor.spec
rpmbuild -ba --define="_topdir $PWD" --define="_tmppath $PWD/tmp" --define="ver $version" supervisor.spec

rm -rf BUILD BUILDROOT SOURCES SPECS tmp || true
