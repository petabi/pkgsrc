# $NetBSD$

DISTNAME=	metasploit-credential-2.0.3
CATEGORIES=	security

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/rapid7/metasploit-credential
COMMENT=	Metasploit::Credential namespace and its subclasses

DEPENDS+=	${RUBY_PKGPREFIX}-metasploit-concern-[0-9]*:../../security/ruby-metasploit-concern
DEPENDS+=	${RUBY_PKGPREFIX}-metasploit-model-[0-9]*:../../security/ruby-metasploit-model
DEPENDS+=	${RUBY_PKGPREFIX}-metasploit_data_models-[0-9]*:../../security/ruby-metasploit_data_models
DEPENDS+=	${RUBY_PKGPREFIX}-ntlm-[0-9]*:../../security/ruby-ntlm
DEPENDS+=	${RUBY_PKGPREFIX}-pg-[0-9]*:../../databases/ruby-pg
DEPENDS+=	${RUBY_PKGPREFIX}-railties42-[0-9]*:../../devel/ruby-railties42
DEPENDS+=	${RUBY_PKGPREFIX}-zip-[0-9]*:../../archivers/ruby-zip

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
