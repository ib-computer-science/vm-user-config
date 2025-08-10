SWAY_CONFIG_DIR = ~/.config/sway/
FOOT_CONFIG_DIR = ~/.config/foot/

.PHONY: default

default: sway-config foot-config bash-config

sway-config:
	/usr/bin/mkdir -p ${SWAY_CONFIG_DIR}
	/usr/bin/ln -sf ${PWD}/sway/config ${SWAY_CONFIG_DIR}

foot-config:
	/usr/bin/mkdir -p ${FOOT_CONFIG_DIR}
	/usr/bin/ln -sf ${PWD}/foot.ini ${FOOT_CONFIG_DIR}

bash-config:
	/usr/bin/ln -sf ${PWD}/bashrc ~/.bashrc
