# 
# Install VirtualBox and import OVA file for BFS
#

USE_PKGBUILD=1

include /usr/local/share/luggage/luggage.make


TITLE=BFS_Box
REVERSE_DOMAIN=org.nacs
PACKAGE_VERSION=1.0

PAYLOAD=\
	pack-vbox-helperfiles \
#	pack-installVBox \

pack-vbox-helperfiles:
	@sudo cp -r ./helperfiles ${PAYLOAD_D}

