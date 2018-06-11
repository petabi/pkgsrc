# $NetBSD$

BUILDLINK_TREE+=	go-imaging

.if !defined(GO_IMAGING_BUILDLINK3_MK)
GO_IMAGING_BUILDLINK3_MK:=

BUILDLINK_CONTENTS_FILTER.go-imaging=	${EGREP} gopkg/
BUILDLINK_DEPMETHOD.go-imaging?=		build

BUILDLINK_API_DEPENDS.go-imaging+=	go-imaging>=1.4.2
BUILDLINK_PKGSRCDIR.go-imaging?=	../../graphics/go-imaging

.include "../../graphics/go-image/buildlink3.mk"
.endif	# GO_IMAGING_BUILDLINK3_MK

BUILDLINK_TREE+=	-go-imaging
