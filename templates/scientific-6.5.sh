DISTNAME=scientific
RELVER=6.5
RELEASE=http://mirror.vpsfree.cz/scientific/6.5/x86_64/os/Packages/sl-release-6.5-1.x86_64.rpm
BASEURL=http://mirror.vpsfree.cz/scientific/6.5/x86_64/os
UPDATES=http://mirror.vpsfree.cz/scientific/6.5/x86_64/updates/security
GROUPNAME='base'
EXTRAPKGS='vim'

. $INCLUDE/redhat-family.sh

bootstrap
configure-common

configure-redhat-common

cat > $INSTALL/etc/fstab << EOF
none    /dev/pts        devpts  rw      0       0
EOF

configure-append <<EOF
sed -i "s/\[1\-6\]/\[0\-6\]/" /etc/init/start-ttys.conf
EOF

run-configure
