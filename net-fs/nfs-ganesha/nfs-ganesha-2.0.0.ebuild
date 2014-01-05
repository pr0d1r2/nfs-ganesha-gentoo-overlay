# Copyright 2014 Marcin Nowicki
# Distributed under the terms of the MIT License
# $Header: $

EAPI=4

inherit eutils
inherit cmake-utils

DESCRIPTION="Gentoo overlay with nfs-ganesha (userspace NFS server)"
HOMEPAGE="https://github.com/nfs-ganesha/nfs-ganesha/wiki"
SRC_URI="mirror://sourceforge/nfs-ganesha/${P}-0.1.1-Source.tar.gz"
LICENSE="GPL-2"
S="${WORKDIR}/${P}-0.1.1-Source"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="app-crypt/mit-krb5 net-libs/libtirpc[kerberos] dev-libs/jemalloc"
DEPEND="app-doc/doxygen
	    net-fs/nfs-utils[nfsidmap,nfsv4,nfsv41,kerberos,libmount,nfsdcld]
		${RDEPEND}"

CMAKE_BUILD_TYPE="Release"
