# $NetBSD: Makefile,v 1.2 2018/03/02 01:19:25 gdt Exp $

PKGREVISION= 1
.include "../../geography/gdal-lib/Makefile.common"
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gdal.org/
COMMENT=	Translator library for raster geospatial data formats, Python binding
LICENSE=	mit

BUILD_DIRS=	swig/python

MAKE_FILE=	GNUmakefile

REPLACE_PYTHON+=	swig/python/scripts/*py

INSTALLATION_DIRS=	bin

.include "../../mk/bsd.prefs.mk"

EGG_NAME?=		GDAL-2.2.2
EGG_INFODIR?=		${EGG_NAME}-py${PYVERSSUFFIX}.egg-info
PLIST_SUBST+=		PYSITELIB=${PYSITELIB}
PLIST_SUBST+=		EGG_NAME=${EGG_NAME}-py${PYVERSSUFFIX}
PLIST_SUBST+=		EGG_INFODIR=${EGG_INFODIR}
PRINT_PLIST_AWK+=	{ gsub(/${EGG_NAME}-py${PYVERSSUFFIX}.egg-info/, \
				"$${EGG_INFODIR}") }

.include "../../geography/gdal-lib/buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../lang/python/application.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
