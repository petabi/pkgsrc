$NetBSD$

https://github.com/include-what-you-use/include-what-you-use/issues/484

--- iwyu_driver.cc.orig	2017-12-02 09:16:38.000000000 +0000
+++ iwyu_driver.cc
@@ -212,20 +212,6 @@ CompilerInstance* CreateCompilerInstance
                                      args_start, args_end, diagnostics);
   invocation->getFrontendOpts().DisableFree = false;
 
-  // Use libc++ headers bundled with Xcode.app on macOS.
-  llvm::Triple triple(invocation->getTargetOpts().Triple);
-  if (triple.isOSDarwin() && invocation->getHeaderSearchOpts().UseLibcxx) {
-    invocation->getHeaderSearchOpts().AddPath(
-        "/Library/Developer/CommandLineTools/usr/include/c++/v1/",
-        clang::frontend::CXXSystem,
-        /*IsFramework=*/false, /*IgnoreSysRoot=*/true);
-    invocation->getHeaderSearchOpts().AddPath(
-        "/Applications/Xcode.app/Contents/Developer/Toolchains/"
-        "XcodeDefault.xctoolchain/usr/include/c++/v1",
-        clang::frontend::CXXSystem,
-        /*IsFramework=*/false, /*IgnoreSysRoot=*/true);
-  }
-
   // Show the invocation, with -v.
   if (invocation->getHeaderSearchOpts().Verbose) {
     errs() << "clang invocation:\n";
