# $NetBSD: Makefile,v 1.11 2018/03/12 11:15:35 wiz Exp $
#

DISTNAME=	girara-0.2.8
PKGREVISION=	1
CATEGORIES=	x11
MASTER_SITES=	https://pwmt.org/projects/girara/download/

MAINTAINER=	degroote@NetBSD.org
HOMEPAGE=	https://pwmt.org/projects/girara/
COMMENT=	Library to develop simple and minimalist user interface
LICENSE=	zlib

USE_TOOLS+=	gmake msgfmt pkg-config
USE_LIBTOOL=	yes

SUBST_CLASSES+=		makefile
SUBST_STAGE.makefile=	pre-configure
SUBST_MESSAGE.makefile=	Fixing install invocation
SUBST_FILES.makefile=	Makefile
SUBST_SED.makefile=	-e '/install.*\.so.*/ s;install -m 644;${INSTALL_LIB:Q};'

MAKE_ENV+=	COLOR=0

.include "../../x11/gtk3/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
