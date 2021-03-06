# $NetBSD: Makefile,v 1.93 2018/03/12 11:17:35 wiz Exp $

DISTNAME=		k3b-2.0.3a
PKGREVISION=		17
CATEGORIES=		sysutils
MASTER_SITES=		${MASTER_SITE_KDE:=k3b/}
EXTRACT_SUFX=		.tar.xz

MAINTAINER=		markd@NetBSD.org
HOMEPAGE=		http://www.k3b.org/
COMMENT=		DVD and CD authoring program

BUILD_DEPENDS+=		automoc4>=0.9.87:../../devel/automoc4
DEPENDS+=		cdrdao-[0-9]*:../../sysutils/cdrdao
DEPENDS+=		{cdrtools,cdrtools-ossdvd}-[0-9]*:../../sysutils/cdrtools

USE_TOOLS+=		perl pkg-config gmake msgfmt
USE_LANGUAGES=		c c++

CMAKE_ARGS+=            -DK3B_BUILD_MUSE_DECODER_PLUGIN=OFF

CONF_FILES=		${PREFIX}/share/examples/kde4-dbus/org.kde.kcontrol.k3bsetup.conf \
			${PKG_SYSCONFBASE}/dbus-1/system.d/org.kde.kcontrol.k3bsetup.conf

ONLY_FOR_PLATFORM=	FreeBSD-*-* Linux-*-* NetBSD-*-* DragonFly-*-*

SUBST_CLASSES+=		pathfix
SUBST_STAGE.pathfix=	post-patch
SUBST_MESSAGE.pathfix=	Add cdrtools path.
SUBST_FILES.pathfix=	libk3b/core/k3bexternalbinmanager.cpp
SUBST_SED.pathfix=	-e 's:"/usr/bin/":"${LOCALBASE}/bin", "/usr/bin/":g'

WRKSRC=			${WRKDIR}/k3b-2.0.3

pre-configure:
	# buildlink loses this symlink
	ln -s ${BUILDLINK_PREFIX.qt4-libs}/qt4/mkspecs/default ${BUILDLINK_DIR}/qt4/mkspecs/default

.include "../../mk/dlopen.buildlink3.mk"
BUILDLINK_TRANSFORM+=   opt:-ldl:${BUILDLINK_LDADD.dl:M*}

.include "../../meta-pkgs/kde4/kde4.mk"
.include "../../audio/flac/buildlink3.mk"
.include "../../audio/lame/buildlink3.mk"
.include "../../audio/libmad/buildlink3.mk"
#.include "../../audio/musepack/buildlink3.mk"
.include "../../audio/libsndfile/buildlink3.mk"
.include "../../audio/musicbrainz/buildlink3.mk"
.include "../../audio/libsamplerate/buildlink3.mk"
.include "../../audio/taglib/buildlink3.mk"
.include "../../graphics/hicolor-icon-theme/buildlink3.mk"
.include "../../multimedia/ffmpeg2/buildlink3.mk"
.include "../../multimedia/libdvdread/buildlink3.mk"
.include "../../multimedia/libkcddb/buildlink3.mk"
.include "../../security/polkit-qt/buildlink3.mk"
.include "../../x11/kdelibs4/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../mk/bsd.pkg.mk"
