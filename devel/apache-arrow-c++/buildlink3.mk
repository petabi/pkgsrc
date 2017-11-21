# $NetBSD$

BUILDLINK_TREE+=	apache-arrow-c++

.if !defined(APACHE_ARROW_C++_BUILDLINK3_MK)
APACHE_ARROW_C++_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.apache-arrow-c+++=	apache-arrow-c++>=0.7.1
BUILDLINK_PKGSRCDIR.apache-arrow-c++?=	../../devel/apache-arrow-c++

.endif	# APACHE_ARROW_C++_BUILDLINK3_MK

BUILDLINK_TREE+=	-apache-arrow-c++
