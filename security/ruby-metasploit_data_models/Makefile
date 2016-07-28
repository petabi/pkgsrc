# $NetBSD$

DISTNAME=	metasploit_data_models-2.0.0
CATEGORIES=	security

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	https://github.com/rapid7/metasploit_data_models
COMMENT=	ActiveRecord models and database helper code for Metasploit

DEPENDS+=	${RUBY_PKGPREFIX}-activerecord>=4.2.6:../../databases/ruby-activerecord42
DEPENDS+=	${RUBY_PKGPREFIX}-activesupport>=4.2.6:../../devel/ruby-activesupport42
DEPENDS+=	${RUBY_PKGPREFIX}-arel-helpers-[0-9]*:../../databases/ruby-arel-helpers
DEPENDS+=	${RUBY_PKGPREFIX}-metasploit-concern-[0-9]*:../../security/ruby-metasploit-concern
DEPENDS+=	${RUBY_PKGPREFIX}-metasploit-model-[0-9]*:../../security/ruby-metasploit-model
DEPENDS+=	${RUBY_PKGPREFIX}-pg-[0-9]*:../../databases/ruby-pg
DEPENDS+=	${RUBY_PKGPREFIX}-postgres_ext-[0-9]*:../../databases/ruby-postgres_ext
DEPENDS+=	${RUBY_PKGPREFIX}-railties>=4.2.6:../../devel/ruby-railties42
DEPENDS+=	${RUBY_PKGPREFIX}-recog>=2.0:../../net/ruby-recog

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
