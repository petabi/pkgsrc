# $NetBSD$

BUILDLINK_TREE+=	thrift-cpp

.if !defined(THRIFT_CPP_BUILDLINK3_MK)
THRIFT_CPP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.thrift-cpp+=	thrift-cpp>=0.10.0
BUILDLINK_PKGSRCDIR.thrift-cpp?=	../../devel/thrift-cpp

.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../devel/libevent/buildlink3.mk"
.endif	# THRIFT_CPP_BUILDLINK3_MK

BUILDLINK_TREE+=	-thrift-cpp
