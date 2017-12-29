# $NetBSD$

PKGNAME=	${DISTNAME:S/cfe/clang-tools-extra/:S/.src//}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
DISTFILES+=	${DISTNAME:S/cfe/clang-tools-extra/}${EXTRACT_SUFX}

DEPENDS+=	clang-${PKGVERSION_NOREV}{,nb*}:../../lang/clang

BUILD_TARGET=	clang-tidy
INSTALL_DIRS=	../build/tools/extra/clang-tidy

CMAKE_ARGS+=	-DCLANG_ENABLE_STATIC_ANALYZER=ON

REPLACE_PYTHON=	tools/extra/clang-tidy/tool/clang-tidy-diff.py \
		tools/extra/clang-tidy/tool/run-clang-tidy.py

pre-patch:
	${MV} ${WRKDIR}/${PKGNAME_NOREV}.src ${WRKSRC}/tools/extra

.include "../../lang/python/application.mk"
.include "../../lang/clang/Makefile.common"
