# $NetBSD: Makefile,v 1.65 2018/03/12 11:15:57 wiz Exp $
#

DISTNAME=		gtk2-${VERSION}
PKGNAME=		${RUBY_PKGPREFIX}-gnome2-gtk-${VERSION}
PKGREVISION=		1
COMMENT=		Ruby binding of GTK+-2.x
CATEGORIES=		x11

MAINTAINER=		tsutsui@NetBSD.org

CONFLICTS+=		ruby-gnome2-gtk-[0-9]*

DEPENDS+=		${RUBY_PKGPREFIX}-gnome2-atk>=${VERSION}:../../devel/ruby-gnome2-atk
DEPENDS+=		${RUBY_PKGPREFIX}-gnome2-pango>=${VERSION}:../../devel/ruby-gnome2-pango
DEPENDS+=		${RUBY_PKGPREFIX}-gnome2-gdkpixbuf>=${VERSION}:../../graphics/ruby-gnome2-gdkpixbuf

.include "../../devel/ruby-gnome2-pango/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../meta-pkgs/ruby-gnome2/Makefile.common"
.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
