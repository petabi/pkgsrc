# $NetBSD$

CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_R_CRAN:=contrib/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://ggvis.rstudio.com/
COMMENT=	Interactive Grammar of Graphics
LICENSE=	gnu-gpl-v2

R_PKGNAME=	ggvis
R_PKGVER=	0.4.3

DEPENDS+=	R-assertthat-[0-9]*:../../devel/R-assertthat
DEPENDS+=	R-dplyr>=0.4.0:../../math/R-dplyr
DEPENDS+=	R-htmltools>=0.2.4:../../textproc/R-htmltools
DEPENDS+=	R-jsonlite>=0.9.11:../../textproc/R-jsonlite
DEPENDS+=	R-lazyeval-[0-9]*:../../devel/R-lazyeval
DEPENDS+=	R-magrittr-[0-9]*:../../devel/R-magrittr
DEPENDS+=	R-shiny>=0.11.1:../../www/R-shiny

USE_LANGUAGES=	# none

BUILDLINK_API_DEPENDS.R+=	R>=3.0
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
