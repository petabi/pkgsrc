$NetBSD$

--- coregrind/m_syswrap/priv_syswrap-darwin.h.orig	2017-05-31 15:14:39.000000000 +0000
+++ coregrind/m_syswrap/priv_syswrap-darwin.h
@@ -248,7 +248,9 @@ DECL_TEMPLATE(darwin, seteuid);         
 DECL_TEMPLATE(darwin, sigreturn);               // 184
 DECL_TEMPLATE(darwin, FAKE_SIGRETURN);
 // NYI chud 185
-// 186
+#if DARWIN_VERS >= DARWIN_10_13
+// NYI thread_selfcounts                        // 186
+#endif /* DARWIN_VERS >= DARWIN_10_13 */
 // 187
 // GEN stat 188
 // GEN fstat 189
@@ -470,7 +472,9 @@ DECL_TEMPLATE(darwin, __thread_selfid); 
 #if DARWIN_VERS >= DARWIN_10_11
 // NYI kevent_qos                               // 374
 #endif /* DARWIN_VERS >= DARWIN_10_11 */
-// 375
+#if DARWIN_VERS >= DARWIN_10_13
+// NYI kevent_id                                // 375
+#endif /* DARWIN_VERS >= DARWIN_10_13 */
 // 376
 // 377
 // 378
@@ -630,6 +634,16 @@ DECL_TEMPLATE(darwin, ulock_wake);      
 // NYI terminate_with_payload                       // 520
 // NYI abort_with_payload                           // 521
 #endif /* DARWIN_VERS >= DARWIN_10_12 */
+#if DARWIN_VERS >= DARWIN_10_13
+// NYI necp_session_open                            // 522
+// NYI necp_session_action                          // 523
+// NYI setattrlistat                                // 524
+// NYI net_qos_guideline                            // 525
+// NYI fmount                                       // 526
+// NYI ntp_adjtime                                  // 527
+// NYI ntp_gettime                                  // 528
+// NYI os_fault_with_payload                        // 529
+#endif /* DARWIN_VERS >= DARWIN_10_13 */
 
 // Mach message helpers
 DECL_TEMPLATE(darwin, mach_port_set_context);
@@ -746,6 +760,10 @@ DECL_TEMPLATE(darwin, semaphore_timedwai
 DECL_TEMPLATE(darwin, task_for_pid);
 DECL_TEMPLATE(darwin, pid_for_task);
 
+#if DARWIN_VERS >= DARWIN_10_13
+// NYI thread_get_special_reply_port                // 50
+#endif /* DARWIN_VERS >= DARWIN_10_13 */
+
 #if DARWIN_VERS >= DARWIN_10_12
 DECL_TEMPLATE(darwin, host_create_mach_voucher_trap);
 DECL_TEMPLATE(darwin, task_register_dyld_image_infos);
