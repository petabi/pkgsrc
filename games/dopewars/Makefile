# $NetBSD: Makefile,v 1.68 2018/03/12 11:16:29 wiz Exp $

DISTNAME=	dopewars-1.5.12
PKGREVISION=	27
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dopewars/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://dopewars.sourceforge.net/
COMMENT=	Make a fortune dealing drugs on the streets of New York

PKG_DESTDIR_SUPPORT=	destdir

USE_LIBTOOL=		yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=		gmake pkg-config
GNU_CONFIGURE=		yes
CONFIGURE_ARGS+=	--enable-networking
CONFIGURE_ARGS+=	--without-esd
CONFIGURE_ARGS+=	--without-sdl
CONFIGURE_ARGS+=	--localstatedir=${VARBASE}/games

.include "options.mk"

.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
