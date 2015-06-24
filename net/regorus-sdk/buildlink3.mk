# $NetBSD$

BUILDLINK_TREE+=	regorus-sdk

.if !defined(REGORUS_SDK_BUILDLINK3_MK)
REGORUS_SDK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.regorus-sdk+=	regorus-sdk>=1.3
BUILDLINK_PKGSRCDIR.regorus-sdk?=	../../net/regorus-sdk
BUILDLINK_DEPMETHOD.regorus-sdk?=	build

.include "../../devel/rematch/buildlink3.mk"
.include "../../net/pius-netmap/buildlink3.mk"
.endif	# REGORUS_SDK_BUILDLINK3_MK

BUILDLINK_TREE+=	-regorus-sdk
