$NetBSD$

Apple's clang does not support thread_local.

--- boost/context/detail/config.hpp.orig	2016-05-05 21:11:09.000000000 +0000
+++ boost/context/detail/config.hpp
@@ -69,7 +69,8 @@
 #endif
 // workaround: Xcode clang feature detection
 #if ! defined(__cpp_lib_integer_sequence) && __cpp_lib_integer_sequence >= 201304
-# if _LIBCPP_STD_VER > 11
+# if _LIBCPP_STD_VER > 11 && \
+     (!defined(__clang__) || __has_feature(cxx_thread_local))
 #  undef BOOST_CONTEXT_NO_CXX14_INTEGER_SEQUENCE
 # endif
 #endif
