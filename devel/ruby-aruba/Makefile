# $NetBSD$

DISTNAME=	aruba-0.14.1
CATEGORIES=	devel

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://github.com/cucumber/aruba
COMMENT=	Extension for popular TDD and BDD frameworks
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-childprocess>=0.5.6:../../sysutils/ruby-childprocess
DEPENDS+=	${RUBY_PKGPREFIX}-contracts>=0.9:../../devel/ruby-contracts
DEPENDS+=	${RUBY_PKGPREFIX}-cucumber>=1.3.19:../../devel/ruby-cucumber
DEPENDS+=	${RUBY_PKGPREFIX}-ffi>=1.9.10:../../devel/ruby-ffi
DEPENDS+=	${RUBY_PKGPREFIX}-rspec-expectations>=2.99:../../devel/ruby-rspec-expectations
DEPENDS+=	${RUBY_PKGPREFIX}-thor>=0.19:../../devel/ruby-thor

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
