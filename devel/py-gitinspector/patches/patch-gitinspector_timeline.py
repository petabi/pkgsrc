$NetBSD$

--- gitinspector/timeline.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/timeline.py
@@ -19,12 +19,12 @@
 
 from __future__ import print_function
 from __future__ import unicode_literals
-from localization import N_
-from outputable import Outputable
+from gitinspector.localization import N_
+from gitinspector.outputable import Outputable
 import datetime
-import format
-import gravatar
-import terminal
+import gitinspector.format as format
+import gitinspector.gravatar as gravatar
+import gitinspector.terminal as terminal
 import textwrap
 
 class TimelineData:
