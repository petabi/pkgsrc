# $NetBSD: Makefile,v 1.56 2018/03/12 11:17:57 wiz Exp $
#

DISTNAME=		vte-${VERSION}
PKGNAME=		${RUBY_PKGPREFIX}-gnome2-${DISTNAME}
PKGREVISION=		1
COMMENT=		Ruby binding of vte
CATEGORIES=		x11

MAINTAINER=		pkgsrc-users@NetBSD.org

DEPENDS+=		${RUBY_PKGPREFIX}-gnome2-gtk>=${VERSION}:../../x11/ruby-gnome2-gtk

.include "../../devel/ruby-gnome2-glib/buildlink3.mk"
.include "../../x11/ruby-gnome2-gtk/buildlink3.mk"
.include "../../x11/vte/buildlink3.mk"
.include "../../meta-pkgs/ruby-gnome2/Makefile.common"
.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
