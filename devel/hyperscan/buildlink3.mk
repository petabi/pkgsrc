# $NetBSD$

BUILDLINK_TREE+=	hyperscan

.if !defined(HYPERSCAN_BUILDLINK3_MK)
HYPERSCAN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hyperscan+=	hyperscan>=4.5.1
BUILDLINK_PKGSRCDIR.hyperscan?=	../../devel/hyperscan

.endif	# HYPERSCAN_BUILDLINK3_MK

BUILDLINK_TREE+=	-hyperscan
