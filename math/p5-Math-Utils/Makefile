# $NetBSD: Makefile,v 1.1 2017/08/17 13:49:55 wen Exp $

DISTNAME=	Math-Utils-1.11
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	math perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Math/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Math-Utils
COMMENT=	Useful mathematical functions not in Perl
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=	auto/Math/Utils/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
