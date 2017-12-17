$NetBSD$

--- gitinspector/outputable.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/outputable.py
@@ -19,7 +19,7 @@
 
 from __future__ import print_function
 from __future__ import unicode_literals
-import format
+import gitinspector.format as format
 
 class Outputable(object):
 	def output_html(self):
