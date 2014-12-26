# Top level makefile for Slackware Security Check Scripts
# (C) 2014 Michiel Broek
#

all:
	@echo "Nothing to do."


install:
	@mkdir -p ${DESTDIR}/etc/security.d/
	install -m 0755 security.d/* ${DESTDIR}/etc/security.d
	@mkdir -p ${DESTDIR}/etc/cron.daily/
	install -m 0755 cron.daily/security ${DESTDIR}/etc/cron.daily

dist:
	cd .. ; tar cvfz sscs-`grep VERSION= sscs/cron.daily/security | cut -d '=' -f 2 | tr -d '"'`.tar.gz sscs/* ; cd -

