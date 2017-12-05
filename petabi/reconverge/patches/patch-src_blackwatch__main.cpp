$NetBSD$

--- src/blackwatch_main.cpp.orig	2018-03-07 16:36:22.000000000 +0000
+++ src/blackwatch_main.cpp
@@ -53,12 +53,12 @@ int main(int argc, char* argv[])
       "bad_url_file,l",
       po::value<std::string>(&bad_url_file)
           ->default_value(
-              (fs::path(CONF_DIR) / "blackwatch" / "badurl.txt").string()),
+              (fs::path(CONF_DIR) / "reconverge" / "badurl.txt").string()),
       "List of url rules to blacklist.")(
       "bad_ip_file,p",
       po::value<std::string>(&bad_ip_file)
           ->default_value(
-              (fs::path(CONF_DIR) / "blackwatch" / "badip.txt").string()),
+              (fs::path(CONF_DIR) / "reconverge" / "badip.txt").string()),
       "List of ip rules to blacklist.");
 
   po::options_description cliargs;
