# $NetBSD$

BUILDLINK_TREE+=	stan

.if !defined(STAN_BUILDLINK3_MK)
STAN_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.stan+=	stan>=2.17.1
BUILDLINK_DEPMETHOD.stan?=	build
BUILDLINK_PKGSRCDIR.stan?=	../../math/stan

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../math/stan-math/buildlink3.mk"
.endif	# STAN_BUILDLINK3_MK

BUILDLINK_TREE+=	-stan
