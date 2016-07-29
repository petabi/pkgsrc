$NetBSD$

--- metasploit-framework.gemspec.orig	2016-07-22 04:39:02.000000000 +0000
+++ metasploit-framework.gemspec
@@ -24,8 +24,8 @@ Gem::Specification.new do |spec|
   spec.homepage      = 'https://www.metasploit.com'
   spec.license       = 'BSD-3-clause'
 
-  spec.files         = `git ls-files`.split($/).reject { |file|
-    file =~ /^documentation|^data\/gui|^external/
+  spec.files         = `find . -type f`.split($/).reject { |file|
+    file =~ /^\.\/documentation|^\.\/data\/gui|^\.\/external/
   }
   spec.bindir = '.'
   if ENV['CREATE_BINSTUBS']
