# $NetBSD$

BUILDLINK_TREE+=	pius-arp

.if !defined(PIUS_ARP_BUILDLINK3_MK)
PIUS_ARP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.pius-arp+=	pius-arp>=1.4.0
BUILDLINK_PKGSRCDIR.pius-arp?=	../../net/pius-arp
.endif	# PIUS_ARP_BUILDLINK3_MK

BUILDLINK_TREE+=	-pius-arp
