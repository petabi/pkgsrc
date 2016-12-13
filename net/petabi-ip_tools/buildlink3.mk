# $NetBSD$

BUILDLINK_TREE+=	petabi-ip_tools

.if !defined(PETABI_IP_TOOLS_BUILDLINK3_MK)
PETABI_IP_TOOLS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.petabi-ip_tools+=	petabi-ip_tools>=0.1.3
BUILDLINK_PKGSRCDIR.petabi-ip_tools?=	../../net/petabi-ip_tools

.endif	# PETABI_IP_TOOLS_BUILDLINK3_MK

BUILDLINK_TREE+=	-petabi-ip_tools
