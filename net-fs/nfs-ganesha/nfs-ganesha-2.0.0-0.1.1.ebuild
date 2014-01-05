# Copyright 2014 Marcin Nowicki
# Distributed under the terms of the MIT License
# $Header: $

EAPI=4

inherit eutils

DESCRIPTION="Gentoo overlay with nfs-ganesha (userspace NFS server)"
HOMEPAGE="https://github.com/nfs-ganesha/nfs-ganesha/wiki"
SRC_URI="mirror://sourceforge/nfs-ganesha/${P}-Source.tar.gz"
LICENSE="GPL-2"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}"
