# $NetBSD: Makefile,v 1.57 2018/03/12 11:16:06 wiz Exp $

PKGREVISION= 6
.include "../../meta-pkgs/xfce4/Makefile.common"

DISTNAME=	xfce4-mixer-4.11.0
CATEGORIES=	audio
COMMENT=	Xfce mixer plugin
MASTER_SITES=	http://archive.xfce.org/src/apps/xfce4-mixer/4.11/

BUILDLINK_API_DEPENDS.gst-plugins0.10-base+=	gst-plugins0.10-base>=0.10.25

.include "../../multimedia/gst-plugins0.10-base/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libunique/buildlink3.mk"
.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
