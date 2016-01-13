# $NetBSD$

DISTNAME=	thrift-0.9.3
PKGNAME=	thrift-cpp-0.9.3
CATEGORIES=	devel
MASTER_SITES=	http://www.apache.org/dyn/closer.cgi?path=/thrift/0.9.3/

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://thrift.apache.org/
COMMENT=	C++ interface to Thrift
LICENSE=	apache-2.0

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	bison gmake pkg-config
USE_LANGUAGES=	c c++

CONFIGURE_ARGS+=	--disable-tests \
			--without-c_glib \
			--with-cpp \
			--without-qt4 \
			--without-csharp \
			--without-erlang \
			--without-haskell \
			--without-java \
			--without-perl \
			--without-php \
			--without-php_extension \
			--without-python \
			--without-ruby

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/libevent/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
