# $NetBSD: Makefile,v 1.64 2018/03/12 11:17:13 wiz Exp $
#

DISTNAME=	kaffeine-1.3.1
PKGREVISION=	7
CATEGORIES=	multimedia
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=kaffeine/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://kaffeine.kde.org/
COMMENT=	Full featured Multimedia-Player for KDE4
LICENSE=	gnu-gpl-v2

BUILD_DEPENDS+=	automoc4>=0.9.87:../../devel/automoc4

USE_TOOLS+=	msgfmt
USE_LANGUAGES=	c c++

.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../multimedia/vlc/buildlink3.mk"
.include "../../x11/libXScrnSaver/buildlink3.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../meta-pkgs/kde4/kde4.mk"
.include "../../mk/bsd.pkg.mk"
