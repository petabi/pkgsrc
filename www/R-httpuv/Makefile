# $NetBSD$

CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/rstudio/httpuv
COMMENT=	HTTP and WebSocket Server Library
LICENSE=	gnu-gpl-v3

R_PKGNAME=	httpuv
R_PKGVER=	1.3.6.2

USE_LANGUAGES+=	c c++11
USE_TOOLS+=	gmake

.include "../../devel/R-Rcpp/buildlink3.mk"
BUILDLINK_API_DEPENDS.R+=	R>=2.15.1
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
