# $NetBSD$

BUILDLINK_TREE+=	R-rstan

.if !defined(R_RSTAN_BUILDLINK3_MK)
R_RSTAN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.R-rstan+=	R-rstan>=2.17.3
BUILDLINK_PKGSRCDIR.R-rstan?=	../../math/R-rstan

.include "../../devel/R-BH/buildlink3.mk"
.include "../../devel/R-Rcpp/buildlink3.mk"
.include "../../math/R-StanHeaders/buildlink3.mk"
.endif	# R_RSTAN_BUILDLINK3_MK

BUILDLINK_TREE+=	-R-rstan
