# $NetBSD: buildlink3.mk,v 1.1 2017/01/01 14:34:27 adam Exp $

BUILDLINK_TREE+=	python36

.if !defined(PYTHON36_BUILDLINK3_MK)
PYTHON36_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.python36+=	python36>=3.6.0
BUILDLINK_PKGSRCDIR.python36?=		../../lang/python36

.if defined(BUILDLINK_DEPMETHOD.python)
BUILDLINK_DEPMETHOD.python36?=	${BUILDLINK_DEPMETHOD.python}
.endif

.include "../../mk/bsd.fast.prefs.mk"

pkgbase := python36
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.python36:Mframework)
BUILDLINK_INCDIRS.python36+=	Library/Frameworks/Python.framework/Versions/3.6/include/python3.6
.else
BUILDLINK_INCDIRS.python36+=	include/python3.6
.endif
BUILDLINK_LIBDIRS.python36+=	lib/python3.6/config
BUILDLINK_TRANSFORM+=		l:python:python3.6

.include "../../mk/dlopen.buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.endif # PYTHON36_BUILDLINK3_MK

BUILDLINK_TREE+=	-python36
