# $NetBSD: buildlink3.mk,v 1.30 2018/03/12 11:15:37 wiz Exp $

BUILDLINK_TREE+=	openimageio

.if !defined(OPENIMAGEIO_BUILDLINK3_MK)
OPENIMAGEIO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.openimageio+=	openimageio>=1.1.1
BUILDLINK_ABI_DEPENDS.openimageio?=	openimageio>=1.5.16nb10
BUILDLINK_PKGSRCDIR.openimageio?=	../../graphics/openimageio

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/hdf5/buildlink3.mk"
.include "../../graphics/freetype2/buildlink3.mk"
.include "../../graphics/glew/buildlink3.mk"
.include "../../graphics/ilmbase/buildlink3.mk"
.include "../../graphics/libwebp/buildlink3.mk"
.include "../../graphics/opencv/buildlink3.mk"
.include "../../graphics/openjpeg15/buildlink3.mk"
.include "../../graphics/openexr/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../x11/qt4-libs/buildlink3.mk"
.endif	# OPENIMAGEIO_BUILDLINK3_MK

BUILDLINK_TREE+=	-openimageio
