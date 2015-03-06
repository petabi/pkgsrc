# $NetBSD$

DISTNAME=	sniffles-3.4.2
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_GITHUB:=petabi/}
GITHUB_PROJECT=	sniffles

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/petabi/sniffles
COMMENT=	Packet capture generator for IDS evaluation

DEPENDS+=	${PYPKGPREFIX}-sortedcontainers>=2.0:../../devel/py-sortedcontainers

#PYDISTUTILSPKG=			yes
PYTHON_VERSIONS_INCOMPATIBLE=	27

.include "../../lang/python/egg.mk"

post-install:
.for f in regexgen rulegen sniffles
	${MV} ${DESTDIR}${PREFIX}/bin/${f} \
		${DESTDIR}${PREFIX}/bin/${f}${PYVERSSUFFIX}
.endfor

.include "../../mk/bsd.pkg.mk"
