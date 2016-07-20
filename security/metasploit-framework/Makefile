# $NetBSD$

DISTNAME=	framework-latest
PKGNAME=	metasploit-${DISTNAME:S/-latest/-4.11.5/}
CATEGORIES=	security
MASTER_SITES=	http://downloads.metasploit.com/data/releases/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	prudhvi-krishna-bsd@surapaneni.in
HOMEPAGE=	http://www.metasploit.com/
COMMENT=	Exploit-Framework for Penetration-Testing
LICENSE=	modified-bsd

DEPENDS+=	${RUBY_PKGPREFIX}-rspec-rails-[0-9]*:../../devel/ruby-rspec-rails

WRKSRC=		${WRKDIR}/msf3

GEM_BUILD=	rake

RUBY_VERSION_REQD=	23

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
