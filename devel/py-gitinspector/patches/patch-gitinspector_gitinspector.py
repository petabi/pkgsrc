$NetBSD$

--- gitinspector/gitinspector.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/gitinspector.py
@@ -21,30 +21,30 @@
 from __future__ import print_function
 from __future__ import unicode_literals
 
-import localization
+import gitinspector.localization as localization
 localization.init()
 
 import atexit
-import basedir
-import blame
-import changes
-import clone
-import config
-import extensions
-import filtering
-import format
-import help
-import interval
+import gitinspector.basedir as basedir
+import gitinspector.blame as blame
+import gitinspector.changes as changes
+import gitinspector.clone as clone
+import gitinspector.config as config
+import gitinspector.extensions as extensions
+import gitinspector.filtering as filtering
+import gitinspector.format as format
+import gitinspector.help as help
+import gitinspector.interval as interval
 import getopt
-import metrics
+import gitinspector.metrics as metrics
 import os
-import optval
-import outputable
-import responsibilities
+import gitinspector.optval as optval
+import gitinspector.outputable as outputable
+import gitinspector.responsibilities as responsibilities
 import sys
-import terminal
-import timeline
-import version
+import gitinspector.terminal as terminal
+import gitinspector.timeline as timeline
+import gitinspector.version as version
 
 class Runner:
 	def __init__(self):
