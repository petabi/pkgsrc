# $NetBSD$

BUILDLINK_TREE+=	go-kingpin

.if !defined(GO_KINGPIN_BUILDLINK3_MK)
GO_KINGPIN_BUILDLINK3_MK:=

BUILDLINK_CONTENTS_FILTER.go-kingpin=	${EGREP} gopkg/
BUILDLINK_DEPMETHOD.go-kingpin?=		build

BUILDLINK_API_DEPENDS.go-kingpin+=	go-kingpin>=3.0.0alpha20180311
BUILDLINK_PKGSRCDIR.go-kingpin?=	../../devel/go-kingpin.v3-unstable

.include "../../devel/go-i18n/buildlink3.mk"
.include "../../math/go-units/buildlink3.mk"
.endif	# GO_KINGPIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-go-kingpin
