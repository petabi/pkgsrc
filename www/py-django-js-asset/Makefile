# $NetBSD: Makefile,v 1.2 2018/02/26 08:27:02 adam Exp $

DISTNAME=	django-js-asset-1.0.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	www python
MASTER_SITES=	${MASTER_SITE_PYPI:=d/django-js-asset/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/matthiask/django-js-asset
COMMENT=	Script tag with additional attributes for django.forms.Media
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-django>=1.9:../../www/py-django

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
