# $NetBSD$

BUILDLINK_TREE+=	R-bindrcpp

.if !defined(R_BINDRCPP_BUILDLINK3_MK)
R_BINDRCPP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.R-bindrcpp+=	R-bindrcpp>=0.2
BUILDLINK_PKGSRCDIR.R-bindrcpp?=	../../devel/R-bindrcpp

.include "../../devel/R-Rcpp/buildlink3.mk"
.endif	# R_BINDRCPP_BUILDLINK3_MK

BUILDLINK_TREE+=	-R-bindrcpp
