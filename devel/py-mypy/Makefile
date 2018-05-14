# $NetBSD$

DISTNAME=	mypy-0.600
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	devel python
MASTER_SITES=	${MASTER_SITE_PYPI:=m/mypy/}

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://mypy-lang.org/
COMMENT=	Optional static typing for Python
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-psutil>=5.4.0:../../sysutils/py-psutil
DEPENDS+=	${PYPKGPREFIX}-typed-ast>=1.1.0:../../devel/py-typed-ast

PYTHON_VERSIONS_INCOMPATIBLE=	27

USE_LANGUAGES=	# none

REPLACE_PYTHON=	typeshed/tests/*.py

.include "../../mk/bsd.prefs.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/egg.mk"

.if "${PYPKGPREFIX}" == "py34"
DEPENDS+=	${PYPKGPREFIX}-typing>=3.5.3:../../devel/py-typing
.endif

PYPREFIX!=	${PYTHONBIN} -c "import distutils.sysconfig as cfg; \
		prefix = cfg.get_config_var('prefix'); \
		relprefix = prefix.replace(\"${LOCALBASE}/\", '', 1); \
		print (relprefix)" || ${ECHO} ""
.if "${PYPREFIX}" == "${LOCALBASE}"
PLIST_SUBST+=	PYPREFIX=""
.else
PLIST_SUBST+=	PYPREFIX=${PYPREFIX:Q}/
.endif

post-install:
.for cmd in dmypy mypy stubgen
	${MV} ${DESTDIR}${PREFIX}/bin/${cmd} \
	      ${DESTDIR}${PREFIX}/bin/${cmd}${PYVERSSUFFIX}
.endfor

.include "../../mk/bsd.pkg.mk"
