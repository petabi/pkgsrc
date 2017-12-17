$NetBSD$

--- gitinspector/blame.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/blame.py
@@ -19,22 +19,22 @@
 
 from __future__ import print_function
 from __future__ import unicode_literals
-from localization import N_
-from outputable import Outputable
-from changes import FileDiff
-import comment
+from gitinspector.localization import N_
+from gitinspector.outputable import Outputable
+from gitinspector.changes import FileDiff
+import gitinspector.comment as comment
 import datetime
-import extensions
-import filtering
-import format
-import gravatar
-import interval
+import gitinspector.extensions as extensions
+import gitinspector.filtering as filtering
+import gitinspector.format as format
+import gitinspector.gravatar as gravatar
+import gitinspector.interval as interval
 import json
 import multiprocessing
 import re
 import subprocess
 import sys
-import terminal
+import gitinspector.terminal as terminal
 import textwrap
 import threading
 
