# $NetBSD: Makefile,v 1.13 2017/06/05 14:24:55 ryoon Exp $

DISTNAME=	XML-Elemental-2.11
PKGNAME=	p5-${DISTNAME:S/11/1.1/}
PKGREVISION=	8
CATEGORIES=	textproc perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=XML/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~tima/XML-Elemental/
COMMENT=	Simplistic and perlish handling of XML data
LICENSE=	artistic

DEPENDS+=	p5-XML-SAX>=0:../../textproc/p5-XML-SAX
BUILD_DEPENDS+=	p5-Task-Weaken>=1.02:../../devel/p5-Task-Weaken

PERL5_PACKLIST=	auto/XML/Elemental/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
