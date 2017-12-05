# $NetBSD$

DISTNAME=	reconverge-0.8.0
CATEGORIES=	sysutils
MASTER_SITES=	# None
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	msk@petabi.com
HOMEPAGE=	http://petabi.com/
COMMENT=	Event management library

PKG_SYSCONFSUBDIR=	${PKGBASE}
USE_CMAKE=		yes
USE_LANGUAGES=		c++

CMAKE_ARGS=	-DCMAKE_BUILD_TYPE=Release
CMAKE_ARGS+=	-DCMAKE_INSTALL_SYSCONFDIR=${PKG_SYSCONFDIR}
CMAKE_ARGS+=	-DEGDIR=${PREFIX}/share/examples

CONF_FILES+=	share/examples/reconverge/badip.txt \
		${PKG_SYSCONFDIR}/badip.txt
CONF_FILES+=	share/examples/reconverge/badurl.txt \
		${PKG_SYSCONFDIR}/badurl.txt
CONF_FILES+=	share/examples/reconverge/general_detectors.json \
		${PKG_SYSCONFDIR}/general_detectors.json
RCD_SCRIPTS+=	blackwatch reconverge

.include "../../databases/SQLiteCpp/buildlink3.mk"
BUILDLINK_DEPMETHOD.atf?=	build
.include "../../devel/atf/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/googletest/buildlink3.mk"
.include "../../devel/rematch/buildlink3.mk"
.include "../../devel/pcre2/buildlink3.mk"
.include "../../devel/protobuf/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../net/grpc/buildlink3.mk"
.include "../../net/libcares/buildlink3.mk"
.include "../../net/libpcap/buildlink3.mk"
.include "../../net/petabi-ip_tools/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
