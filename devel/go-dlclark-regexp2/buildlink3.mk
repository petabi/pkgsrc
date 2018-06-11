# $NetBSD$

BUILDLINK_TREE+=	go-dlclark-regexp2

.if !defined(GO_DLCLARK_REGEXP2_BUILDLINK3_MK)
GO_DLCLARK_REGEXP2_BUILDLINK3_MK:=

BUILDLINK_CONTENTS_FILTER.go-dlclark-regexp2=	${EGREP} gopkg/
BUILDLINK_DEPMETHOD.go-dlclark-regexp2?=	build

BUILDLINK_API_DEPENDS.go-dlclark-regexp2+=	go-dlclark-regexp2>=1.1.6
BUILDLINK_PKGSRCDIR.go-dlclark-regexp2?=	../../devel/go-dlclark-regexp2
.endif	# GO_DLCLARK_REGEXP2_BUILDLINK3_MK

BUILDLINK_TREE+=	-go-dlclark-regexp2
