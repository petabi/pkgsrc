# $NetBSD: Makefile,v 1.8 2018/03/12 11:16:11 wiz Exp $

DISTNAME=	telepathy-qt-0.9.6.1
PKGREVISION=	2
CATEGORIES=	chat
MASTER_SITES=	http://telepathy.freedesktop.org/releases/telepathy-qt/

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	https://telepathy.freedesktop.org/doc/telepathy-qt/
COMMENT=	Qt bindings for telepathy
LICENSE=	gnu-lgpl-v2.1

USE_CMAKE=	yes
USE_TOOLS+=	pkg-config
USE_LANGUAGES=	c c++

PKGCONFIG_OVERRIDE+=	TelepathyQt/TelepathyQt.pc.in
PKGCONFIG_OVERRIDE+=	TelepathyQt/TelepathyQtService.pc.in
PKGCONFIG_OVERRIDE+=	TelepathyQt/Farstream/TelepathyQtFarstream.pc.in

PYTHON_FOR_BUILD_ONLY=	yes
PYTHON_VERSIONS_INCOMPATIBLE=	34 35 36 # not yet ported as of 0.24.1
BUILD_DEPENDS+=		${PYPKGPREFIX}-expat-[0-9]*:../../textproc/py-expat

BUILDLINK_TRANSFORM.SunOS+=	rm:-Wl,--no-add-needed

.include "../../chat/telepathy-farstream/buildlink3.mk"
BUILDLINK_API_DEPENDS.telepathy-glib+=	telepathy-glib>=0.18.0
.include "../../chat/telepathy-glib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../multimedia/gstreamer1/buildlink3.mk"
.include "../../sysutils/dbus/buildlink3.mk"
.include "../../sysutils/dbus-glib/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.include "../../x11/qt4-tools/buildlink3.mk"
.include "../../x11/qt4-qdbus/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
