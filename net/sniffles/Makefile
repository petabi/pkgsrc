# $NetBSD$

DISTNAME=	sniffles-3.1.1
CATEGORIES=	net
MASTER_SITES=	file:///usr/pkgsrc/distfiles/

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	file:///usr/pkgsrc/distfiles/
COMMENT=	Packet capture generator for IDS evaluation

DEPENDS+=	${PYPKGPREFIX}-sortedcontainers-[0-9]*:../../devel/py-sortedcontainers

PYDISTUTILSPKG=			yes
PYTHON_VERSIONS_ACCEPTED=	34 33

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
