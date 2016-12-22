# $NetBSD$

BUILDLINK_TREE+=	pius-session

.if !defined(PIUS_SESSION_BUILDLINK3_MK)
PIUS_SESSION_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pius-session+=	pius-session>=0.21.0
BUILDLINK_PKGSRCDIR.pius-session?=	../../net/pius-session

.include "../../net/pius-netmap/buildlink3.mk"
.endif	# PIUS_SESSION_BUILDLINK3_MK

BUILDLINK_TREE+=	-pius-session
