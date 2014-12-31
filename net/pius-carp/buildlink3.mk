# $NetBSD$

BUILDLINK_TREE+=	pius-carp

.if !defined(PIUS_CARP_BUILDLINK3_MK)
PIUS_CARP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pius-carp+=	pius-carp>=0.1.1
BUILDLINK_PKGSRCDIR.pius-carp?=	../../net/pius-carp
.endif	# PIUS_CARP_BUILDLINK3_MK

BUILDLINK_TREE+=	-pius-carp
