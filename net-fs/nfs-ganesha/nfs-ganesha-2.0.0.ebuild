# Copyright 2014 Marcin Nowicki
# Distributed under the terms of the MIT License
# $Header: $

EAPI=4

inherit cmake-utils flag-o-matic

DESCRIPTION="Gentoo overlay with nfs-ganesha (userspace NFS server)"
HOMEPAGE="https://github.com/nfs-ganesha/nfs-ganesha/wiki"
SRC_URI="mirror://sourceforge/nfs-ganesha/${P}-0.1.1-Source.tar.gz"
LICENSE="GPL-2"
S="${WORKDIR}/${P}-0.1.1-Source"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="-doc -jemalloc -xfs -ceph -glusterfs"

RDEPEND="app-crypt/mit-krb5
		 net-libs/libtirpc[kerberos]
		 jemalloc? ( dev-libs/jemalloc )
		 xfs? ( sys-fs/xfsprogs )
		 ceph? ( sys-cluster/ceph )
		 glusterfs? ( sys-cluster/glusterfs[fuse] )"
DEPEND="doc? ( app-doc/doxygen )
	    net-fs/nfs-utils[nfsidmap,nfsv4,nfsv41,kerberos,libmount,nfsdcld]
		${RDEPEND}"

CMAKE_BUILD_TYPE="Release"

MAKEOPTS="-j1"

pkg_pretend() {
	is-flag -march=native && die 'cannot compile with -march=native in cflags'
	use ceph && die 'ceph support does not compile. You are welcome to fix it.'
}
