USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make

TITLE=set_desktops
PACKAGE_NAME=${TITLE}
REVERSE_DOMAIN=org.nacswildcats
PACKAGE_VERSION=1.0
PAYLOAD=\
	pack-opt-NACSManage-set_desktops.py

pack-opt-NACSManage-%: % l_opt_NACSManage
	@sudo ${INSTALL} -m 755 -g wheel -o root "${<}" ${WORK_D}/opt/NACSManage
