# $NetBSD: Makefile,v 1.1 2016/02/25 19:46:54 fhajny Exp $

CATEGORIES=	databases
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/rstats-db/RSQLite
COMMENT=	Database Interface R driver for SQLite
LICENSE=	gnu-lgpl-v2

R_PKGNAME=	RSQLite
R_PKGVER=	2.0

DEPENDS+=	R-bit64-[0-9]*:../../devel/R-bit64
DEPENDS+=	R-blob>=1.1:../../devel/R-blob
DEPENDS+=	R-DBI>=0.4.9:../../math/R-DBI
DEPENDS+=	R-memoise-[0-9]*:../../devel/R-memoise
DEPENDS+=	R-pkgconfig-[0-9]*:../../devel/R-pkgconfig

USE_LANGUAGES+=	c c++

.include "../../devel/R-BH/buildlink3.mk"
BUILDLINK_API_DEPENDS.R-Rcpp+=	R-Rcpp>=0.12.7
.include "../../devel/R-Rcpp/buildlink3.mk"
.include "../../devel/R-plogr/buildlink3.mk"
BUILDLINK_API_DEPENDS.R+=	R>=3.1.0
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
