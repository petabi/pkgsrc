# $NetBSD$

BUILDLINK_TREE+=	R-RcppArmadillo

.if !defined(R_RCPPARMADILLO_BUILDLINK3_MK)
R_RCPPARMADILLO_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.R-RcppArmadillo+=	R-RcppArmadillo>=0.8.300.1.0
BUILDLINK_PKGSRCDIR.R-RcppArmadillo?=	../../math/R-RcppArmadillo

.include "../../devel/R-Rcpp/buildlink3.mk"
.endif	# R_RCPPARMADILLO_BUILDLINK3_MK

BUILDLINK_TREE+=	-R-RcppArmadillo
