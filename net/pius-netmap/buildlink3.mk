# $NetBSD$

BUILDLINK_TREE+=	pius-netmap

.if !defined(PIUS_NETMAP_BUILDLINK3_MK)
PIUS_NETMAP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pius-netmap+=	pius-netmap>=1.3
BUILDLINK_PKGSRCDIR.pius-netmap?=	../../net/pius-netmap
BUILDLINK_DEPMETHOD.pius-netmap?=	build
.endif	# PIUS_NETMAP_BUILDLINK3_MK

.include "../../devel/boost-headers/buildlink3.mk"

BUILDLINK_TREE+=	-pius-netmap
