# $NetBSD: Makefile,v 1.39 2018/03/12 11:17:50 wiz Exp $
#

DISTNAME=		gromit-20041213
PKGREVISION=		28
CATEGORIES=		x11
MASTER_SITES=		http://www.home.unix-ag.org/simon/gromit/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.home.unix-ag.org/simon/gromit/
COMMENT=		Text marker tool for the X11 screen

USE_TOOLS+=		pkg-config
INSTALLATION_DIRS=	bin

LDFLAGS+=		${X11_LDFLAGS} -lX11
LDFLAGS.DragonFly=	-lm
LDFLAGS.SunOS+=		-lm

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gromit ${DESTDIR}${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/gromit
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/doc/gromit

.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
