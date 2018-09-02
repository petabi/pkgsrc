# $NetBSD$

DISTNAME=	julia-1.0.0-full
PKGNAME=	${DISTNAME:S/-full//}
CATEGORIES=	lang
MASTER_SITES=	https://github.com/JuliaLang/julia/releases/download/v1.0.0/

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://julialang.org/
COMMENT=	High-performance dynamic language for numerical computing
LICENSE=	mit

WRKSRC=		${WRKDIR}/${PKGBASE}
USE_LANGUAGES=	c c++ fortran
USE_TOOLS=	gmake perl

.include "../../www/http-parser/buildlink3.mk" # for libgit2

pre-configure:
	${ECHO} "LOCALBASE=${PREFIX}" > ${WRKSRC}/Make.user

.include "../../mk/bsd.pkg.mk"
