# $NetBSD$

BUILDLINK_TREE+=	rematch

.if !defined(REMATCH_BUILDLINK3_MK)
REMATCH_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.rematch+=	rematch>=1.3
BUILDLINK_PKGSRCDIR.rematch?=	../../devel/rematch
BUILDLINK_DEPMETHOD.rematch?=	build

.endif	# REMATCH_BUILDLINK3_MK

BUILDLINK_TREE+=	-rematch
