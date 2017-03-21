# $NetBSD$

DISTNAME=	sniffles-3.3.0
CATEGORIES=	net
MASTER_SITES=	file:///usr/pkgsrc/distfiles/

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/petabi/sniffles
COMMENT=	Packet capture generator for IDS evaluation

DEPENDS+=	${PYPKGPREFIX}-sortedcontainers-[0-9]*:../../devel/py-sortedcontainers

PYTHON_VERSIONS_ACCEPTED=	36 35 34

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
