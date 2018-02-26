# $NetBSD$

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/twolodzko/extraDistr
COMMENT=	Additional univariate and multivariate distributions
LICENSE=	gnu-gpl-v2

R_PKGNAME=	extraDistr
R_PKGVER=	1.8.8

USE_LANGUAGES=	c++11

.include "../../devel/R-Rcpp/buildlink3.mk"
BUILDLINK_API_DEPENDS.R+=	R>=3.1.0
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
