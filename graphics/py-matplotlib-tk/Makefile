# $NetBSD: Makefile,v 1.32 2018/03/12 11:16:49 wiz Exp $

PKGREVISION= 1
.include "../../graphics/py-matplotlib/Makefile.common"

PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/-/-tk-/}
COMMENT=	Tk frontend for matplotlib

DEPENDS+=	${PYPKGPREFIX}-matplotlib-[0-9]*:../../graphics/py-matplotlib
DEPENDS+=	${PYPKGPREFIX}-Tk-[0-9]*:../../x11/py-Tk

MPL_PACKAGES=	[setupext.Numpy(),setupext.LibAgg(),setupext.BackendTkAgg()]

post-patch:
	( ${ECHO} "[directories]"; \
	${ECHO} "basedirlist=/usr"; \
	${ECHO} "[provide_packages]"; \
	${ECHO} "pytz = False"; \
	${ECHO} "dateutil = False"; \
	${ECHO} "[gui_support]"; \
	${ECHO} "gtk = False"; \
	${ECHO} "tkagg = True"; \
	${ECHO} "wxagg = False"; \
	${ECHO} "macosx = False" ) > ${WRKSRC}/setup.cfg

post-install:
	${RM} -r ${DESTDIR}/${PREFIX}/${PYSITELIB}/${EGG_INFODIR}

do-test:
	${ECHO} "backend      : TkAgg" > ${WRKSRC}/matplotlibrc
	${RUN} cd ${WRKSRC} && MPLCONFIGDIR=${PWD} \
	MATPLOTLIBDATA=${WRKSRC}/lib/matplotlib/mpl-data \
	PYTHONPATH=${DESTDIR}${PREFIX}/${PYSITELIB} \
	${PYTHONBIN} -c "import matplotlib; matplotlib.test()"

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../x11/tk/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
