$NetBSD$

https://github.com/coursera-dl/coursera-dl/pull/724

--- coursera/commandline.py.orig	2018-06-24 10:47:54.000000000 +0000
+++ coursera/commandline.py
@@ -342,6 +342,14 @@ def parse_args(args=None):
         'Advanced authentication options')
 
     group_adv_auth.add_argument(
+        '-ca',
+        '--cauth',
+        dest='cookies_cauth',
+        action='store',
+        default=None,
+        help='cauth cookie value from browser')
+
+    group_adv_auth.add_argument(
         '-c',
         '--cookies_file',
         dest='cookies_file',
@@ -492,7 +500,7 @@ def parse_args(args=None):
         logging.error('Cookies file not found: %s', args.cookies_file)
         sys.exit(1)
 
-    if not args.cookies_file:
+    if not args.cookies_file and not args.cookies_cauth:
         try:
             args.username, args.password = get_credentials(
                 username=args.username, password=args.password,
