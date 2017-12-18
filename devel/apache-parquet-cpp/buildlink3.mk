# $NetBSD$

BUILDLINK_TREE+=	apache-parquet-cpp

.if !defined(APACHE_PARQUET_CPP_BUILDLINK3_MK)
APACHE_PARQUET_CPP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.apache-parquet-cpp+=	apache-parquet-cpp>=1.3.1
BUILDLINK_PKGSRCDIR.apache-parquet-cpp?=	../../devel/apache-parquet-cpp

.endif	# APACHE_PARQUET_CPP_BUILDLINK3_MK

BUILDLINK_TREE+=	-apache-parquet-cpp
