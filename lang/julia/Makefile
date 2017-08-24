# $NetBSD$

DISTNAME=	julia-0.6.0
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_GITHUB:=JuliaLang/}
GITHUB_RELEASE=	v0.6.0

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://julialang.org/
COMMENT=	High-performance dynamic language for numerical computing
LICENSE=	mit

USE_LANGUAGES=	c c++ fortran
USE_TOOLS=	gmake perl

MAKE_FLAGS+=	LOCALBASE=${LOCALBASE}
MAKE_FLAGS+=	USE_SYSTEM_ARPACK=1
MAKE_FLAGS+=	USE_SYSTEM_BLAS=1
MAKE_FLAGS+=	USE_SYSTEM_FFTW=1
MAKE_FLAGS+=	USE_SYSTEM_GMP=1
MAKE_FLAGS+=	USE_SYSTEM_LAPACK=1
MAKE_FLAGS+=	USE_SYSTEM_LIBGIT2=1
MAKE_FLAGS+=	USE_SYSTEM_LIBM=1
#MAKE_FLAGS+=	USE_SYSTEM_LIBUV=1
MAKE_FLAGS+=	USE_SYSTEM_LLVM=1
MAKE_FLAGS+=	USE_SYSTEM_MPFR=1
MAKE_FLAGS+=	USE_SYSTEM_PCRE=1
MAKE_FLAGS+=	USE_SYSTEM_SUITESPARSE=1
MAKE_FLAGS+=	USE_SYSTEM_UTF8PROC=1

.include "../../wip/utf8proc/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../devel/libgit2/buildlink3.mk"
#.include "../../devel/libuv/buildlink3.mk"
.include "../../devel/pcre2/buildlink3.mk"
.include "../../lang/llvm/buildlink3.mk"
.include "../../math/arpack/buildlink3.mk"
.include "../../math/blas/buildlink3.mk"
.include "../../math/fftw/buildlink3.mk"
.include "../../math/lapack/buildlink3.mk"
.include "../../math/mpfr/buildlink3.mk"
.include "../../wip/suitesparse/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
