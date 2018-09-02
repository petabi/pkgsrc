# $NetBSD$

DISTNAME=	julia-1.0.0-${LOWER_OPSYS}-${MACHINE_ARCH}
PKGNAME=	${DISTNAME:S/julia/julia-bin/:S/-${LOWER_OPSYS}-${MACHINE_ARCH}//}
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_BACKUP}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://julialang.org/
COMMENT=	High-performance dynamic language for numerical computing
LICENSE=	mit

ONLY_FOR_PLATFORM=	Darwin-*-x86_64

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/julia
USE_LANGUAGES=	# none
USE_TOOLS+=	pax

CHECK_SHLIBS_SKIP=	lib/julia/*.dylib  # failed with @rpath

REPLACE_INTERPRETER+=	julia
REPLACE.julia.old=	/usr/bin/env julia
REPLACE.julia.new=	${PREFIX}/bin/julia
REPLACE_FILES.julia=	share/julia/build_sysimg.jl \
			share/julia/julia-config.jl

INSTALLATION_DIRS=	bin include lib share ${PKGMANDIR}

.include "../../graphics/hicolor-icon-theme/buildlink3.mk"

post-extract:
	${MV} ${WRKSRC}/share/man ${WRKSRC}/${PKGMANDIR}

do-install:
	cd ${WRKSRC}/bin && ${PAX} -rw . ${DESTDIR}${PREFIX}/bin
	cd ${WRKSRC}/include && ${PAX} -rw . ${DESTDIR}${PREFIX}/include
	cd ${WRKSRC}/lib && ${PAX} -rw . ${DESTDIR}${PREFIX}/lib
	cd ${WRKSRC}/man && ${PAX} -rw . ${DESTDIR}${PREFIX}/${PKGMANDIR}
	cd ${WRKSRC}/share && ${PAX} -rw . ${DESTDIR}${PREFIX}/share

.include "../../mk/bsd.pkg.mk"
