$NetBSD$

--- gitinspector/metrics.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/metrics.py
@@ -19,12 +19,12 @@
 
 from __future__ import print_function
 from __future__ import unicode_literals
-from localization import N_
-from outputable import Outputable
-from changes import FileDiff
-import comment
-import filtering
-import interval
+from gitinspector.localization import N_
+from gitinspector.outputable import Outputable
+from gitinspector.changes import FileDiff
+import gitinspector.comment as comment
+import gitinspector.filtering as filtering
+import gitinspector.interval as interval
 import re
 import subprocess
 
