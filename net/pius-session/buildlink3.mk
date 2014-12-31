# $NetBSD$

BUILDLINK_TREE+=	pius-session

.if !defined(PIUS_SESSION_BUILDLINK3_MK)
PIUS_SESSION_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pius-session+=	pius-session>=0.14.2
BUILDLINK_DEPMETHOD.pius-session?=	build
BUILDLINK_PKGSRCDIR.pius-session?=	../../net/pius-session

.endif	# PIUS_SESSION_BUILDLINK3_MK

BUILDLINK_TREE+=	-pius-session
