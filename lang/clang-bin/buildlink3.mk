# $NetBSD$

BUILDLINK_TREE+=	clang-bin

.if !defined(CLANG_BIN_BUILDLINK3_MK)
CLANG_BIN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.clang-bin+=	clang-bin>=3.7.0
BUILDLINK_PKGSRCDIR.clang-bin?=	../../lang/clang-bin
.endif	# CLANG_BIN_BUILDLINK3_MK

BUILDLINK_TREE+=	-clang-bin
