# $NetBSD$

DISTNAME=	julia-1.0.1-${LOWER_OPSYS}-${MACHINE_ARCH}
PKGNAME=	${DISTNAME:S/julia/julia-bin/:S/-${LOWER_OPSYS}-${MACHINE_ARCH}//}
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://julialang.org/
COMMENT=	High-performance dynamic language for numerical computing
LICENSE=	mit

ONLY_FOR_PLATFORM=	Darwin-*-x86_64

NO_BUILD=	yes
WRKSRC=		${WRKDIR}/julia
USE_LANGUAGES=	# none
USE_TOOLS+=	pax

REPLACE_INTERPRETER+=	julia
REPLACE.julia.old=	/usr/bin/env julia
REPLACE.julia.new=	${PREFIX}/bin/julia
REPLACE_FILES.julia=	share/julia/build_sysimg.jl \
			share/julia/julia-config.jl

INSTALLATION_DIRS=	bin include lib share ${PKGMANDIR}

.include "../../mk/bsd.prefs.mk"
.if ${OPSYS} == "Darwin"
.PHONY: fix-darwin-install-name
post-install: fix-darwin-install-name
fix-darwin-install-name:
	otool -XL ${DESTDIR}${PREFIX}/bin/julia				\
	    | ${GREP} '@rpath' | while read rpath rest; do		\
		install_name_tool -change $$rpath			\
		    `${ECHO} $$rpath | ${SED} -e 's,@rpath,${PREFIX}/lib,g'` \
		    ${DESTDIR}${PREFIX}/bin/julia;			\
	done
.  for lib in lib lib/julia
	for f in ${DESTDIR}${PREFIX}/${lib}/lib*.dylib; do		\
		[ ! -f $$f ] && continue;				\
		install_name_tool -id `${ECHO} $$f | ${SED} -e 's,${DESTDIR},,g'` $$f; \
		otool -XL $$f | grep '@rpath' | while read rpath rest; do \
			install_name_tool -change $$rpath \
			    `${ECHO} $$rpath | ${SED} -e 's,@rpath,${PREFIX}/lib/julia,g'` \
			    $$f;					\
		done;							\
	done
.  endfor
.endif

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
