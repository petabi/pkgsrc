# $NetBSD: Makefile,v 1.25 2017/09/03 08:53:16 wiz Exp $

PKGNAME=	${PYPKGPREFIX}-expat-${PY_DISTVERSION}
CATEGORIES=	textproc python

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.python.org/
COMMENT=	Python interface to expat

EXTRACT_ELEMENTS=	${PYSUBDIR}/Modules/pyexpat.c

USE_GCC_RUNTIME=	yes

PYDISTUTILSPKG=	yes
PY_PATCHPLIST=	yes
PY_SETUP_SUBST+= EXPATPREFIX=${BUILDLINK_DIR}
PY_SETUP_SUBST+= EXPATRTPREFIX=${BUILDLINK_PREFIX.expat}

PLIST_VARS+=	framework
PYSETUPINSTALLARGS+=	--install-lib ${PREFIX}/${PYLIB}/lib-dynload

# ignore errors due to missing files (EXTRACT_ELEMENTS!)
do-patch:
	(cd ${WRKSRC}; \
	for f in ${PATCHDIR}/patch-*;do \
	${PATCH} --batch <$$f || ${TRUE}; \
	done)

.include "../../textproc/expat/buildlink3.mk"
.include "../../lang/python/pyversion.mk"
.if ${PYVERSSUFFIX} == "3.4"
NO_BUILD=	yes
NO_CONFIGURE=	yes

do-install:
	${TRUE}
.else
PLIST.framework = yes
.include "../../lang/python/extension.mk"
.endif
.include "../../lang/python/srcdist.mk"
.include "../../mk/bsd.pkg.mk"
