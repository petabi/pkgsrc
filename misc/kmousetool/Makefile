# $NetBSD: Makefile,v 1.37 2018/03/12 11:17:08 wiz Exp $

DISTNAME=	kmousetool-16.12.0
PKGREVISION=	4
CATEGORIES=	misc
COMMENT=	KDE mouse manipulation tool
MASTER_SITES=	${MASTER_SITE_KDE:=applications/16.12.0/src/}

.include "../../meta-pkgs/kde4/Makefile.kde4"

.include "../../meta-pkgs/kde4/kde4.mk"

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/kdelibs4/buildlink3.mk"

.include "../../mk/bsd.pkg.mk"
