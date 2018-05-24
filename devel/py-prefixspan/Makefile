# $NetBSD: Makefile,v 1.2 2018/02/26 08:51:43 adam Exp $

DISTNAME=	prefixspan-0.5.1.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=p/prefixspan/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/chuanconggao/PrefixSpan-py
COMMENT=	PrefixSpan in Python 3
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-docopt>=0.6.2:../../devel/py-docopt
DEPENDS+=	${PYPKGPREFIX}-extratools-[0-9]*:../../devel/py-extratools

USE_LANGUAGES=	# none

PYTHON_VERSIONS_INCOMPATIBLE=	27 34 35  # py-extratools

post-install:
	${MV} ${DESTDIR}${PREFIX}/bin/prefixspan-cli \
		${DESTDIR}${PREFIX}/bin/prefixspan-cli${PYVERSSUFFIX}

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
