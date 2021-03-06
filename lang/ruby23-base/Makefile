# $NetBSD: Makefile,v 1.15 2018/02/23 15:26:14 wiz Exp $

DISTNAME=	${RUBY_DISTNAME}
PKGNAME=	${RUBY_PKGPREFIX}-base-${RUBY_VERSION}
PKGREVISION=	2
CATEGORIES=	lang ruby
MASTER_SITES=	${MASTER_SITE_RUBY}

PATCH_SITES=	https://bugs.ruby-lang.org/attachments/download/7029/
PATCHFILES=	rubygems-276-for-ruby23.patch
PATCH_DIST_STRIP=	-p0

MAINTAINER=	taca@NetBSD.org
HOMEPAGE=	${RUBY_HOMEPAGE}
COMMENT=	Ruby ${RUBY_VERSION} release minimum base package

RUBY_VERSIONS_ACCEPTED=	23

USE_LANGUAGES=		c
USE_TOOLS+=		pax yacc pkg-config
GNU_CONFIGURE=		yes
TEST_TARGET=		test
CONFIGURE_ARGS+=	--enable-shared
WRKSRC=			${RUBY_WRKSRC}

.include "options.mk"
.include "../../lang/ruby/platform.mk"

.if !empty(RUBY_SUFFIX)
CONFIGURE_ARGS+= --program-suffix=${RUBY_SUFFIX}
CONFIGURE_ARGS+= --with-soname=${RUBY_NAME}
CONFIGURE_ARGS+= --with-ruby-version=${RUBY_VER_DIR}
CONFIGURE_ARGS+= --with-ruby-pc="ruby-${RUBY_VERSION}.pc"
.endif

DOCS=	BSDL COPYING COPYING.ja ChangeLog LEGAL NEWS README.EXT README.EXT.ja \
	README.ja.md README.md doc/ChangeLog-1.8.0 doc/ChangeLog-1.9.3 \
	doc/ChangeLog-2.0.0 doc/ChangeLog-2.1.0 doc/ChangeLog-YARV \
	doc/NEWS-1.8.7 doc/NEWS-1.9.1 doc/NEWS-1.9.2 doc/NEWS-1.9.3 \
	doc/NEWS-2.0.0 doc/NEWS-2.1.0 doc/contributing.rdoc \
	doc/contributors.rdoc doc/dtrace_probes.rdoc doc/etc.rd.ja \
	doc/forwardable.rd.ja doc/globals.rdoc \
	doc/images/boottime-classes.png doc/irb/irb-tools.rd.ja \
	doc/irb/irb.rd.ja doc/keywords.rdoc doc/maintainers.rdoc \
	doc/marshal.rdoc doc/pty/README.expect.ja doc/pty/README.ja \
	doc/regexp.rdoc doc/security.rdoc doc/shell.rd.ja \
	doc/standard_library.rdoc doc/syntax/assignment.rdoc \
	doc/syntax/calling_methods.rdoc doc/syntax/control_expressions.rdoc \
	doc/syntax/exceptions.rdoc doc/syntax/literals.rdoc \
	doc/syntax/methods.rdoc doc/syntax/miscellaneous.rdoc \
	doc/syntax/modules_and_classes.rdoc doc/syntax/precedence.rdoc \
	doc/syntax/refinements.rdoc doc/syntax.rdoc
EXT_DOCS=	syslog/syslog.txt

BIGDECIMAL_EXAMPLES=	linear.rb nlsolve.rb pi.rb
OPENSSL_EXAMPLES=	c_rehash.rb cert2text.rb certstore.rb cipher.rb \
			crlstore.rb echo_cli.rb echo_svr.rb gen_csr.rb \
			smime_read.rb smime_write.rb wget.rb
REPLACE_RUBY=		bin/erb bin/gem bin/irb bin/rake bin/rdoc bin/ri \
			gems/rake-10.4.2/bin/rake \
			gems/net-telnet-0.1.1/bin/console \
			gems/net-telnet-0.1.1/bin/setup
REPLACE_RUBY_DIRS=	ext lib sample
INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 ${RUBY_DOC}/images \
			${RUBY_DOC}/irb ${RUBY_DOC}/pty ${RUBY_DOC}/ripper \
			${RUBY_DOC}/stringio ${RUBY_DOC}/syntax \
			${RUBY_EG}/bigdecimal ${RUBY_EG}/pty
# ${RUBY_ARCHINC} ${RUBY_ARCHLIB}
EMPTY_DIRS=		generator/template markup/simple_markup

pre-configure:
	${RM} -f ${WRKSRC}/ext/gdbm/extconf.rb
	${RM} -f ${WRKSRC}/ext/fiddle/extconf.rb
	${RM} -f ${WRKSRC}/ext/readline/extconf.rb
	${RM} -f ${WRKSRC}/ext/tk/extconf.rb
	${RM} -f ${WRKSRC}/ext/tk/tkutil/extconf.rb
	${TOUCH} ${WRKSRC}/prelude.c

pre-install:
	cd ${WRKSRC}/lib; \
		${FIND} . \( -name '*.orig' -o -name '*.orig_dist' \) \
		-exec ${RM} -f {} \;
.for f in ${EMPTY_DIRS}
	${RMDIR} ${WRKSRC}/lib/rdoc/${f} 2>/dev/null || ${TRUE}
.endfor

post-install:
.for f in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/${f} ${DESTDIR}${PREFIX}/${RUBY_DOC}/${f:C/^doc\///}
.endfor
.for f in ${EXT_DOCS}
	${INSTALL_DATA} ${WRKSRC}/ext/${f} ${DESTDIR}${PREFIX}/${RUBY_DOC}
.endfor
	cd ${WRKSRC}/ext/ripper; ${PAX} -rw README ${DESTDIR}${PREFIX}/${RUBY_DOC}/ripper
	cd ${WRKSRC}/ext/stringio; ${PAX} -rw README ${DESTDIR}${PREFIX}/${RUBY_DOC}/stringio
	cd ${WRKSRC}/sample; ${PAX} -rw . ${DESTDIR}${PREFIX}/${RUBY_EG}
.for f in ${BIGDECIMAL_EXAMPLES}
	${INSTALL_DATA} ${RUBY_WRKSRC}/ext/bigdecimal/sample/${f} \
		${DESTDIR}${PREFIX}/${RUBY_EG}/bigdecimal
.endfor
.for f in ${OPENSSL_EXAMPLES}
	${INSTALL_DATA} ${RUBY_WRKSRC}/sample/openssl/${f} \
		${DESTDIR}${PREFIX}/${RUBY_EG}/openssl
.endfor
	${CHMOD} -R g-w ${DESTDIR}${PREFIX}/${GEM_HOME}/gems
	${RUBY_GENERATE_PLIST}

.include "../../mk/bdb.buildlink3.mk"
.include "../../converters/libiconv/buildlink3.mk"
.include "../../devel/zlib/buildlink3.mk"
.include "../../security/openssl/buildlink3.mk"
.include "../../textproc/libyaml/buildlink3.mk"
.include "../../lang/ruby/Makefile.common"
.include "../../mk/bsd.pkg.mk"
