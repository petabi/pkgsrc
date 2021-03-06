$NetBSD$

--- src/fl_line_style.cxx.orig	2012-03-18 18:48:29.000000000 +0000
+++ src/fl_line_style.cxx
@@ -35,8 +35,8 @@ int fl_line_width_ = 0;
 
 #ifdef __APPLE_QUARTZ__
 float fl_quartz_line_width_ = 1.0f;
-static enum CGLineCap fl_quartz_line_cap_ = kCGLineCapButt;
-static enum CGLineJoin fl_quartz_line_join_ = kCGLineJoinMiter;
+static CGLineCap fl_quartz_line_cap_ = kCGLineCapButt;
+static CGLineJoin fl_quartz_line_join_ = kCGLineJoinMiter;
 static CGFloat *fl_quartz_line_pattern = 0;
 static int fl_quartz_line_pattern_size = 0;
 void fl_quartz_restore_line_style_() {
@@ -110,9 +110,9 @@ void Fl_Graphics_Driver::line_style(int 
   DeleteObject(fl_current_xmap->pen);
   fl_current_xmap->pen = newpen;
 #elif defined(__APPLE_QUARTZ__)
-  static enum CGLineCap Cap[4] = { kCGLineCapButt, kCGLineCapButt, 
+  static CGLineCap Cap[4] = { kCGLineCapButt, kCGLineCapButt, 
                                    kCGLineCapRound, kCGLineCapSquare };
-  static enum CGLineJoin Join[4] = { kCGLineJoinMiter, kCGLineJoinMiter, 
+  static CGLineJoin Join[4] = { kCGLineJoinMiter, kCGLineJoinMiter, 
                                     kCGLineJoinRound, kCGLineJoinBevel };
   if (width<1) width = 1;
   fl_quartz_line_width_ = (float)width; 
