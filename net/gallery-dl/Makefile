# $NetBSD: Makefile,v 1.10 2018/03/17 11:07:39 leot Exp $

DISTNAME=	gallery_dl-1.3.1
PKGNAME=	${DISTNAME:S/_/-/}
CATEGORIES=	net python
MASTER_SITES=	${MASTER_SITE_PYPI:=g/gallery-dl/}

MAINTAINER=	leot@NetBSD.org
HOMEPAGE=	https://github.com/mikf/gallery-dl
COMMENT=	Command-line program to download image galleries and collections
LICENSE=	gnu-gpl-v2

DEPENDS+=	${PYPKGPREFIX}-requests>=2.4.2:../../devel/py-requests

USE_LANGUAGES=			# none
PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
