$NetBSD$

--- gitinspector/config.py.orig	2016-02-03 13:25:05.000000000 +0000
+++ gitinspector/config.py
@@ -18,11 +18,11 @@
 # along with gitinspector. If not, see <http://www.gnu.org/licenses/>.
 
 from __future__ import unicode_literals
-import extensions
-import filtering
-import format
-import interval
-import optval
+import gitinspector.extensions as extensions
+import gitinspector.filtering as filtering
+import gitinspector.format as format
+import gitinspector.interval as interval
+import gitinspector.optval as optval
 import os
 import subprocess
 
