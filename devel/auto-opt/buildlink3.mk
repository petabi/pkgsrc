# $NetBSD$

BUILDLINK_TREE+=	auto-opt

.if !defined(AUTO_OPT_BUILDLINK3_MK)
AUTO_OPT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.auto-opt+=	auto-opt>=0.2.1
BUILDLINK_DEPMETHOD.auto-opt?=		build
BUILDLINK_PKGSRCDIR.auto-opt?=		../../devel/auto-opt

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../lang/lua/buildlink3.mk"
.endif	# AUTO_OPT_BUILDLINK3_MK

BUILDLINK_TREE+=	-auto-opt
