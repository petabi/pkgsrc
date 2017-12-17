$NetBSD$

--- gitinspector/help.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/help.py
@@ -19,8 +19,8 @@
 
 from __future__ import print_function
 from __future__ import unicode_literals
-from extensions import DEFAULT_EXTENSIONS
-from format import __available_formats__
+from gitinspector.extensions import DEFAULT_EXTENSIONS
+from gitinspector.format import __available_formats__
 import sys
 
 __doc__ = _("""Usage: {0} [OPTION]... [REPOSITORY]
