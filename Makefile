include goals.mk

CONFIG.mk: CONFIG.mk.IN config.status
	./config.status