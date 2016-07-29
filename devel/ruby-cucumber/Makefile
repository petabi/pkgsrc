# $NetBSD$

DISTNAME=	cucumber-2.4.0
CATEGORIES=	devel

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://cukes.info/
COMMENT=	Tool for Behaviour Driven Development
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-builder>=2.1.2:../../textproc/ruby-builder
DEPENDS+=	${RUBY_PKGPREFIX}-cucumber-core>=1.5.0:../../devel/ruby-cucumber-core
DEPENDS+=	${RUBY_PKGPREFIX}-cucumber-wire>=0.0.1:../../devel/ruby-cucumber-wire
DEPENDS+=	${RUBY_PKGPREFIX}-diff-lcs>=1.1.3:../../textproc/ruby-diff-lcs
DEPENDS+=	${RUBY_PKGPREFIX}-gherkin>=4.0:../../lang/ruby-gherkin
DEPENDS+=	${RUBY_PKGPREFIX}-multi_json>=1.7.5:../../textproc/ruby-multi_json
DEPENDS+=	${RUBY_PKGPREFIX}-multi_test>=0.1.2:../../devel/ruby-multi_test

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
