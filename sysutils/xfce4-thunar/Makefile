# $NetBSD: Makefile,v 1.51 2018/03/12 11:15:46 wiz Exp $

PKGREVISION= 2
.include "../../meta-pkgs/xfce4/Makefile.common"

VERSION=	1.6.11
DISTNAME=	Thunar-${VERSION}
PKGNAME=	xfce4-thunar-${VERSION}
CATEGORIES=	sysutils
MASTER_SITES=	http://archive.xfce.org/src/xfce/thunar/1.6/

HOMEPAGE=	http://docs.xfce.org/xfce/thunar/start
COMMENT=	Xfce file manager

PKGCONFIG_OVERRIDE+=	thunarx/thunarx-2.pc.in

PKG_SYSCONFSUBDIR=	xdg/Thunar
EGDIR=			${XFCE4_EGBASE}/Thunar

MAKE_DIRS+=	${XFCE4_EGBASE} ${PREFIX}/share/xfce4
CONF_FILES=	${EGDIR}/uca.xml ${PKG_SYSCONFDIR}/uca.xml

.include "options.mk"

.include "../../graphics/libexif/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../sysutils/libnotify/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libxfce4util/buildlink3.mk"
.include "../../x11/libxfce4ui/buildlink3.mk"
.include "../../x11/xfce4-exo/buildlink3.mk"
.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
