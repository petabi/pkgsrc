# $NetBSD$

BUILDLINK_TREE+=	go-chroma

.if !defined(GO_CHROMA_BUILDLINK3_MK)
GO_CHROMA_BUILDLINK3_MK:=

BUILDLINK_CONTENTS_FILTER.go-chroma=	${EGREP} gopkg/
BUILDLINK_DEPMETHOD.go-chroma?=		build

BUILDLINK_API_DEPENDS.go-chroma+=	go-chroma>=0.4.0
BUILDLINK_PKGSRCDIR.go-chroma?=	../../textproc/go-chroma

.include "../../devel/go-colorable/buildlink3.mk"
.include "../../devel/go-dlclark-regexp2/buildlink3.mk"
.include "../../devel/go-fnmatch/buildlink3.mk"
.include "../../devel/go-kingpin.v3-unstable/buildlink3.mk"
.endif	# GO_CHROMA_BUILDLINK3_MK

BUILDLINK_TREE+=	-go-chroma
