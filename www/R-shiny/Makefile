# $NetBSD$

DISTNAME=	shiny_1.0.5
CATEGORIES=	www

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://shiny.rstudio.com/
COMMENT=	Web Application Framework for R
LICENSE=	gnu-gpl-v3

DEPENDS+=	R-R6>=2.0:../../devel/R-R6
DEPENDS+=	R-digest-[0-9]*:../../security/R-digest
DEPENDS+=	R-htmltools>=0.3.5:../../textproc/R-htmltools
DEPENDS+=	R-httpuv>=1.3.5:../../www/R-httpuv
DEPENDS+=	R-jsonlite>=0.9.16:../../textproc/R-jsonlite
DEPENDS+=	R-mime>=0.3:../../mail/R-mime
DEPENDS+=	R-sourcetools-[0-9]*:../../lang/R-sourcetools
DEPENDS+=	R-xtable-[0-9]*:../../math/R-xtable

USE_LANGUAGES=	# none

BUILDLINK_API_DEPENDS.R+=	R>=3.0.2
.include "../../math/R/Makefile.extension"
.include "../../mk/bsd.pkg.mk"
