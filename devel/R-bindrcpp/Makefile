# $NetBSD$

CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/krlmlr/bindrcpp
COMMENT=	Rcpp interface to active bindings
LICENSE=	mit

R_PKGNAME=	bindrcpp
R_PKGVER=	0.2

DEPENDS+=	R-bindr-[0-9]*:../../devel/R-bindr

USE_LANGUAGES=	c++

.include "../../devel/R-Rcpp/buildlink3.mk"
.include "../../devel/R-plogr/buildlink3.mk"
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
