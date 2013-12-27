USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make
TITLE=scriptRunnerPkg
REVERSE_DOMAIN=org.nacs
PACKAGE_VERSION=1.2
PAYLOAD=\
	pack-scriptRunner

pack-scriptRunner: l_usr_local_bin
	@sudo ${CP} ./scriptRunner.py ${WORK_D}/usr/local/bin/scriptRunner.py
	@sudo chmod 755 ${WORK_D}/usr/local/bin/scriptRunner.py
	@sudo chown root:wheel ${WORK_D}/usr/local/bin/scriptRunner.py
