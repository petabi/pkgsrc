# $NetBSD$

BUILDLINK_TREE+=	monkey

.if !defined(MONKEY_BUILDLINK3_MK)
MONKEY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.monkey+=	monkey>=1.6.9
BUILDLINK_DEPMETHOD.monkey?=	build
BUILDLINK_PKGSRCDIR.monkey?=	../../www/monkey

.include "../../mk/pthread.buildlink3.mk"
.endif	# MONKEY_BUILDLINK3_MK

BUILDLINK_TREE+=	-monkey
