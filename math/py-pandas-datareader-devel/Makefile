# $NetBSD: Makefile,v 1.3 2018/02/02 21:16:19 minskim Exp $

DISTNAME=	pandas-datareader-0.6.0.20180703
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_GITHUB:=pydata/}
GITHUB_PROJECT=	pandas-datareader
GITHUB_TAG=	df98a72ab4c795435eb6ca65af223786ebe4e26d

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://pandas.pydata.org/
COMMENT=	Remote data access for pandas
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-requests>=2.3.0:../../devel/py-requests
DEPENDS+=	${PYPKGPREFIX}-requests-ftp-[0-9]*:../../devel/py-requests-ftp
DEPENDS+=	${PYPKGPREFIX}-requests-file-[0-9]*:../../devel/py-requests-file
DEPENDS+=	${PYPKGPREFIX}-pandas>=0.19.2:../../math/py-pandas

SUBST_CLASSES+=		version
SUBST_STAGE.version=	pre-configure
SUBST_MESSAGE.version=	Setting the version number.
SUBST_FILES.version=	versioneer.py
SUBST_SED.version=	-e 's,"0+unknown","${PKGVERSION_NOREV}",g'

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
