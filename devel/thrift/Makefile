# $NetBSD$

DISTNAME=	thrift-0.10.0
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_APACHE:=thrift/0.10.0/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://thrift.apache.org/
COMMENT=	Framework for scalable cross-language services development
LICENSE=	apache-2.0

GNU_CONFIGURE=	yes
USE_LIBTOOL=	yes
USE_TOOLS+=	bison pkg-config
USE_LANGUAGES=	c c++

CONFIGURE_ARGS+=	--without-c_glib \
			--without-cpp \
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

.include "../../mk/bsd.pkg.mk"
