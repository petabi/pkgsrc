#!@RCD_SCRIPTS_SHELL@
#
# $NetBSD$
#
# PROVIDE: blackwatch
# REQUIRE: DAEMON

if [ -f /etc/rc.subr ]; then
	. /etc/rc.subr
fi

name="blackwatch"
rcvar=${name}
command="@PREFIX@/bin/${name}"

if [ -f /etc/rc.subr ]; then
	load_rc_config $name
	run_rc_command "$1"
else
	@ECHO@ -n " ${name}"
	${command}
fi
