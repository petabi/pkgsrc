$NetBSD$

https://github.com/coursera-dl/coursera-dl/pull/724

--- coursera/coursera_dl.py.orig	2018-06-24 10:47:54.000000000 +0000
+++ coursera/coursera_dl.py
@@ -233,7 +233,10 @@ def main():
         return
 
     session = get_session()
-    login(session, args.username, args.password)
+    if args.cookies_cauth:
+        session.cookies.set('CAUTH', args.cookies_cauth)
+    else:
+        login(session, args.username, args.password)
     if args.specialization:
         args.class_names = expand_specializations(session, args.class_names)
 
