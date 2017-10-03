# $NetBSD$

GITHUB_PROJECT=	metasploit-framework
GITHUB_TAG=	4.16.8
DISTNAME=	${GITHUB_TAG}
PKGNAME=	${GITHUB_PROJECT}-${GITHUB_TAG}
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_GITHUB:=rapid7/}
EXTRACT_SUFX=	.tar.gz
DIST_SUBDIR=	${GITHUB_PROJECT}

MAINTAINER=	prudhvi-krishna-bsd@surapaneni.in
HOMEPAGE=	http://www.metasploit.com/
COMMENT=	Exploit-Framework for Penetration-Testing
LICENSE=	modified-bsd

DEPENDS+=	${RUBY_PKGPREFIX}-actionpack42>=4.2.6:../../www/ruby-actionpack42
DEPENDS+=	${RUBY_PKGPREFIX}-activerecord42>=4.2.6:../../databases/ruby-activerecord42
DEPENDS+=	${RUBY_PKGPREFIX}-activesupport42>=4.2.6:../../devel/ruby-activesupport42
DEPENDS+=	${RUBY_PKGPREFIX}-bcrypt-[0-9]*:../../security/ruby-bcrypt
DEPENDS+=	${RUBY_PKGPREFIX}-jsobfu-[0-9]*:../../security/ruby-jsobfu
DEPENDS+=	${RUBY_PKGPREFIX}-json-[0-9]*:../../textproc/ruby-json
DEPENDS+=	${RUBY_PKGPREFIX}-metasm-[0-9]*:../../devel/ruby-metasm
DEPENDS+=	${RUBY_PKGPREFIX}-metasploit-concern-[0-9]*:../../security/ruby-metasploit-concern
DEPENDS+=	${RUBY_PKGPREFIX}-metasploit-credential-[0-9]*:../../security/ruby-metasploit-credential
DEPENDS+=	${RUBY_PKGPREFIX}-metasploit_data_models-[0-9]*:../../security/ruby-metasploit_data_models
DEPENDS+=	${RUBY_PKGPREFIX}-metasploit-model-[0-9]*:../../security/ruby-metasploit-model
DEPENDS+=	${RUBY_PKGPREFIX}-metasploit-payloads>=1.1.13:../../security/ruby-metasploit-payloads
DEPENDS+=	${RUBY_PKGPREFIX}-metasploit_payloads-mettle-[0-9]*:../../security/ruby-metasploit_payloads-mettle
DEPENDS+=	${RUBY_PKGPREFIX}-msgpack-[0-9]*:../../devel/ruby-msgpack
DEPENDS+=	${RUBY_PKGPREFIX}-network_interface-[0-9]*:../../net/ruby-network_interface
DEPENDS+=	${RUBY_PKGPREFIX}-nokogiri-[0-9]*:../../textproc/ruby-nokogiri
DEPENDS+=	${RUBY_PKGPREFIX}-packetfu-[0-9]*:../../net/ruby-packetfu
DEPENDS+=	${RUBY_PKGPREFIX}-pcaprub-[0-9]*:../../net/ruby-pcaprub
DEPENDS+=	${RUBY_PKGPREFIX}-pg-[0-9]*:../../databases/ruby-pg
DEPENDS+=	${RUBY_PKGPREFIX}-railties42-[0-9]*:../../devel/ruby-railties42
DEPENDS+=	${RUBY_PKGPREFIX}-recog-[0-9]*:../../net/ruby-recog
DEPENDS+=	${RUBY_PKGPREFIX}-rubyntlm-[0-9]*:../../security/ruby-rubyntlm
DEPENDS+=	${RUBY_PKGPREFIX}-openssl-ccm-[0-9]*:../../security/ruby-openssl-ccm
DEPENDS+=	${RUBY_PKGPREFIX}-octokit-[0-9]*:../../devel/ruby-octokit
DEPENDS+=	${RUBY_PKGPREFIX}-redcarpet-[0-9]*:../../textproc/ruby-redcarpet
DEPENDS+=	${RUBY_PKGPREFIX}-patch_finder-[0-9]*:../../security/ruby-patch_finder
DEPENDS+=	${RUBY_PKGPREFIX}-tzinfo-data-[0-9]*:../../time/ruby-tzinfo-data
DEPENDS+=	${RUBY_PKGPREFIX}-sshkey-[0-9]*:../../security/ruby-sshkey
DEPENDS+=	${RUBY_PKGPREFIX}-bit-struct-[0-9]*:../../devel/ruby-bit-struct
DEPENDS+=	${RUBY_PKGPREFIX}-windows_error-[0-9]*:../../devel/ruby-bit-struct
DEPENDS+=	${RUBY_PKGPREFIX}-pdf-reader-[0-9]*:../../print/ruby-pdf-reader
DEPENDS+=	${RUBY_PKGPREFIX}-dnsruby-[0-9]*:../../net/ruby-dnsruby
DEPENDS+=	${RUBY_PKGPREFIX}-net-ssh-[0-9]*:../../security/ruby-net-ssh
DEPENDS+=	${RUBY_PKGPREFIX}-rbnacl-[0-9]*:../../security/ruby-rbnacl
DEPENDS+=	${RUBY_PKGPREFIX}-rbnacl-libsodium-[0-9]*:../../security/ruby-rbnacl-libsodium
DEPENDS+=	${RUBY_PKGPREFIX}-bcrypt_pbkdf-[0-9]*:../../security/ruby-bcrypt_pbkdf
DEPENDS+=	${RUBY_PKGPREFIX}-ruby_smb-[0-9]*:../../net/ruby-ruby_smb
DEPENDS+=	${RUBY_PKGPREFIX}-rex-core-[0-9]*:../../security/ruby-rex-core
DEPENDS+=	${RUBY_PKGPREFIX}-rex-text-[0-9]*:../../security/ruby-rex-text
DEPENDS+=	${RUBY_PKGPREFIX}-rex-random_identifier-[0-9]*:../../security/ruby-rex-random_identifier
DEPENDS+=	${RUBY_PKGPREFIX}-rex-powershell-[0-9]*:../../security/ruby-rex-powershell
DEPENDS+=	${RUBY_PKGPREFIX}-rex-zip-[0-9]*:../../security/ruby-rex-zip
DEPENDS+=	${RUBY_PKGPREFIX}-rex-registry-[0-9]*:../../security/ruby-rex-registry
DEPENDS+=	${RUBY_PKGPREFIX}-rex-java-[0-9]*:../../security/ruby-rex-java
DEPENDS+=	${RUBY_PKGPREFIX}-rex-struct2-[0-9]*:../../security/ruby-rex-struct2
DEPENDS+=	${RUBY_PKGPREFIX}-rex-arch-[0-9]*:../../security/ruby-rex-arch
DEPENDS+=	${RUBY_PKGPREFIX}-rex-ole-[0-9]*:../../security/ruby-rex-ole
DEPENDS+=	${RUBY_PKGPREFIX}-rex-mime-[0-9]*:../../security/ruby-rex-mime
DEPENDS+=	${RUBY_PKGPREFIX}-rex-nop-[0-9]*:../../security/ruby-rex-nop
DEPENDS+=	${RUBY_PKGPREFIX}-rex-bin_tools-[0-9]*:../../security/ruby-rex-bin_tools
DEPENDS+=	${RUBY_PKGPREFIX}-rex-socket-[0-9]*:../../security/ruby-rex-socket
DEPENDS+=	${RUBY_PKGPREFIX}-rex-sslscan-[0-9]*:../../security/ruby-rex-sslscan
DEPENDS+=	${RUBY_PKGPREFIX}-rex-rop_builder-[0-9]*:../../security/ruby-rex-rop_builder
DEPENDS+=	${RUBY_PKGPREFIX}-rex-encoder-[0-9]*:../../security/ruby-rex-encoder
DEPENDS+=	${RUBY_PKGPREFIX}-rex-exploitation-[0-9]*:../../security/ruby-rex-exploitation
DEPENDS+=	${RUBY_PKGPREFIX}-rb-readline-[0-9]*:../../devel/ruby-rb-readline
DEPENDS+=	${RUBY_PKGPREFIX}-zip-[0-9]*:../../archivers/ruby-zip
DEPENDS+=	${RUBY_PKGPREFIX}-sqlite3-[0-9]*:../../databases/ruby-sqlite3
DEPENDS+=	${RUBY_PKGPREFIX}-tzinfo-[0-9]*:../../time/ruby-tzinfo
DEPENDS+=	${RUBY_PKGPREFIX}-filesize-[0-9]*:../../devel/ruby-filesize
DEPENDS+=	${RUBY_PKGPREFIX}-openvas_omp-[0-9]*:../../security/ruby-openvas_omp
DEPENDS+=	${RUBY_PKGPREFIX}-nessus_rest-[0-9]*:../../security/ruby-nessus_rest
DEPENDS+=	${RUBY_PKGPREFIX}-nexpose-[0-9]*:../../security/ruby-nexpose
DEPENDS+=	${RUBY_PKGPREFIX}-xdr-[0-9]*:../../net/ruby-xdr

RUBY_VERSIONS_ACCEPTED=	24

USE_TOOLS+=	bash:run pax

SCRIPTS=	msfbinscan msfconsole msfd msfelfscan msfmachscan msfpescan \
		msfrop msfrpc msfrpcd msfvenom

REPLACE_RUBY+=		${SCRIPTS} features/support/bin/stty Rakefile \
			script/cucumber
REPLACE_RUBY_DIRS+=	data external features lib tools
REPLACE_BASH+=		tools/exploit/install_msf_apk.sh

CHECK_FILES_SKIP+=		${PREFIX}/share/metasploit-framework/Gemfile.lock
CHECK_INTERPRETER_SKIP+=	share/metasploit-framework/msfupdate \
				share/metasploit-framework/Rakefile

INSTALLATION_DIRS+=	bin share/metasploit-framework

.include "../../lang/ruby/rubyversion.mk"
.include "../../lang/ruby/replace.mk"

do-build:
	${RM} ${WRKSRC}/Gemfile.lock

do-install:
	cd ${WRKSRC} && ${PAX} -rw . ${DESTDIR}${PREFIX}/share/metasploit-framework
.for f in ${SCRIPTS}
	${PRINTF} '#!/bin/sh\ncd ${PREFIX}/share/metasploit-framework && ./${f} "$$@"\n' > ${DESTDIR}${PREFIX}/bin/${f}
	${CHMOD} ${BINMODE} ${DESTDIR}${PREFIX}/bin/${f}
.endfor

post-install:
	${TOUCH} ${DESTDIR}${PREFIX}/share/metasploit-framework/Gemfile.lock
	${CHMOD} 666 ${DESTDIR}${PREFIX}/share/metasploit-framework/Gemfile.lock

.include "../../mk/bsd.pkg.mk"
