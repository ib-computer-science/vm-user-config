SWAY_CONFIG_DIR = ~/.config/sway/
FOOT_CONFIG_DIR = ~/.config/foot/
EMACS_CONFIG_DIR = ~/.emacs.d/

.PHONY: default

default: sway-config foot-config bash-config emacs-config

sway-config:
	/usr/bin/mkdir -p ${SWAY_CONFIG_DIR}
	/usr/bin/ln -sf ${PWD}/sway/config ${SWAY_CONFIG_DIR}

foot-config:
	/usr/bin/mkdir -p ${FOOT_CONFIG_DIR}
	/usr/bin/ln -sf ${PWD}/foot.ini ${FOOT_CONFIG_DIR}

bash-config:
	/usr/bin/ln -sf ${PWD}/bashrc ~/.bashrc

emacs-config:
	/usr/bin/mkdir -p ${EMACS_CONFIG_DIR}
	/usr/bin/ln -sf ${PWD}/init.el ${EMACS_CONFIG_DIR}
