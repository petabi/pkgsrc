# $NetBSD: Makefile,v 1.25 2018/03/12 11:16:33 wiz Exp $

DISTNAME=	kollision-${_KDE_VERSION}
PKGREVISION=	9
CATEGORIES=	games
COMMENT=	a simple ball dodging game

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../games/libkdegames/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
