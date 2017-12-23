# $NetBSD$

DISTNAME=	trendi-0.0.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://petabi.com/
COMMENT=	Trend analyzer for time series

BUILD_DEPENDS+=	${PYPKGPREFIX}-grpcio-tools-[0-9]*:../../net/py-grpcio-tools
DEPENDS+=	${PYPKGPREFIX}-grpcio-[0-9]*:../../net/py-grpcio
DEPENDS+=	${PYPKGPREFIX}-rrdtool-[0-9]*:../../databases/py-rrdtool
DEPENDS+=	${PYPKGPREFIX}-matplotlib-[0-9]*:../../graphics/py-matplotlib
DEPENDS+=	${PYPKGPREFIX}-numpy-[0-9]*:../../math/py-numpy
DEPENDS+=	${PYPKGPREFIX}-pandas-[0-9]*:../../math/py-pandas
DEPENDS+=	${PYPKGPREFIX}-scipy-[0-9]*:../../math/py-scipy

PYTHON_VERSIONS_INCOMPATIBLE=	27 34

INSTALLATION_DIRS+=	bin

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
