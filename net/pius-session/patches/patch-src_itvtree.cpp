$NetBSD$

--- src/itvtree.cpp.orig	2015-12-01 19:04:03.000000000 +0000
+++ src/itvtree.cpp
@@ -1,6 +1,7 @@
 #include <algorithm>
 #include <cassert>
 #include <cstdlib>
+#include <stdexcept>
 
 #include "pius/session.h"
 #include "itvtree.h"
