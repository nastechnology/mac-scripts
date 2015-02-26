USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make

TITLE=logintext
PACKAGE_NAME=${TITLE}
REVERSE_DOMAIN=org.nacswildcats
PACKAGE_VERSION=1.0
PAYLOAD=\
	pack-logintext

pack-logintext: l_opt_NACSManage
	@sudo ${CP} ./logintext ${WORK_D}/opt/NACSManage/logintext
	@sudo chmod 755 ${WORK_D}/opt/NACSManage/logintext
	@sudo chown root:wheel ${WORK_D}/opt/NACSManage/logintext
