# $NetBSD$

DISTNAME=	pyre2-0.2.23
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/pyre2/re3/}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_GITHUB:=alin23/}
GITHUB_PROJECT=	pyre2
GITHUB_TAG=	${PKGVERSION_NOREV}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/alin23/pyre2/
COMMENT=	Python wrapper for RE2
#LICENSE=	apache-2.0

USE_LANGUAGES+=	c c++11

.include "../../devel/py-cython/buildlink3.mk"
.include "../../devel/re2/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
