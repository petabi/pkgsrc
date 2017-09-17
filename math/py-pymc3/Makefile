# $NetBSD$

DISTNAME=	pymc3-3.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_PYPI:=p/pymc3/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/pymc-devs/pymc3
COMMENT=	Bayesian modeling and probabilistic machine learning
LICENSE=	apache-2.0

DEPENDS+=	${PYPKGPREFIX}-h5py>=2.7.0:../../devel/py-h5py
DEPENDS+=	${PYPKGPREFIX}-joblib>=0.9:../../wip/py-joblib
DEPENDS+=	${PYPKGPREFIX}-matplotlib>=1.5.0:../../graphics/py-matplotlib
DEPENDS+=	${PYPKGPREFIX}-pandas>=0.18.0:../../math/py-pandas
DEPENDS+=	${PYPKGPREFIX}-patsy>=0.4.0:../../math/py-patsy
DEPENDS+=	${PYPKGPREFIX}-six>=1.10.0:../../lang/py-six
DEPENDS+=	${PYPKGPREFIX}-theano>=0.9.0:../../wip/py-theano
DEPENDS+=	${PYPKGPREFIX}-tqdm>=4.8.4:../../wip/py-tqdm

.include "../../lang/python/egg.mk"
# url2pkg-marker (please do not remove this line.)
.include "../../mk/bsd.pkg.mk"
