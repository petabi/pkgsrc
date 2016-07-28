# $NetBSD$

DISTNAME=	packetfu-1.1.11
CATEGORIES=	net

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/packetfu/packetfu
COMMENT=	Mid-level packet manipulation library for Ruby
LICENSE=	bsd

DEPENDS+=	${RUBY_PKGPREFIX}-network_interface-[0-9]*:../../net/ruby-network_interface
DEPENDS+=	${RUBY_PKGPREFIX}-pcaprub>=0.12:../../net/ruby-pcaprub

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
