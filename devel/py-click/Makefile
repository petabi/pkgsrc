# $NetBSD: Makefile,v 1.13 2017/07/09 10:10:44 adam Exp $

DISTNAME=	click-6.7
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=c/click/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://pypi.python.org/pypi/click
COMMENT=	Simple wrapper around optparse for powerful command line utilities
LICENSE=	modified-bsd

BUILD_DEPENDS+=	${PYPKGPREFIX}-test-[0-9]*:../../devel/py-test

USE_LANGUAGES=	# none

TEST_ENV+=	PYTHONPATH=..

do-test:
	cd ${WRKSRC}/tests && ${SETENV} ${TEST_ENV} py.test-${PYVERSSUFFIX} --tb=short

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
TEST_ENV+=	LC_ALL=en_US.UTF-8
