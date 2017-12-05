# $NetBSD$

BUILDLINK_TREE+=	reconverge

.if !defined(RECONVERGE_BUILDLINK3_MK)
RECONVERGE_BUILDLINK3_MK:=

BUILDLINK_DEPMETHOD.reconverge?=	build
BUILDLINK_API_DEPENDS.reconverge+=	reconverge>=0.4.0
BUILDLINK_PKGSRCDIR.reconverge?=	../../petabi/reconverge

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/rematch/buildlink3.mk"
.endif	# RECONVERGE_BUILDLINK3_MK

BUILDLINK_TREE+=	-reconverge
