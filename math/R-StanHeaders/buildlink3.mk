# $NetBSD$

BUILDLINK_TREE+=	R-StanHeaders

.if !defined(R_STANHEADERS_BUILDLINK3_MK)
R_STANHEADERS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.R-StanHeaders+=	R-StanHeaders>=2.17.2
BUILDLINK_PKGSRCDIR.R-StanHeaders?=	../../math/R-StanHeaders

.include "../../math/R-RcppEigen/buildlink3.mk"
.endif	# R_STANHEADERS_BUILDLINK3_MK

BUILDLINK_TREE+=	-R-StanHeaders
