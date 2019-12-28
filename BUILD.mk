# Support for the cross compiler.
include CROSSBUILD.mk
# Index of sources.
include SOURCES.mk
TARGET					= $(CB_TARGET)
TARGET_DIR				=  ../BQos-$(TARGET)
DIST_OBJ_DIR			=  $(TARGET_DIR)/lib-$(TARGET)
DIST_CPP_OBJS			:= $(BQos_CPP_SRCS:src/%.cpp=$(DIST_OBJ_DIR)/%.o)
DIST_LIBC_OBJS			:= $(LIBC_C_SRCS:src/%.c=$(DIST_OBJ_DIR)/%.o)
DIST_TST_OBJS			:= $(BQos_CPP_SRCS:src/%.cpp=$(DIST_OBJ_DIR)/%_TEST)
DIST_GAS_OBJS			:= $(BQos_GAS_SRCS:src/%.s=$(DIST_OBJ_DIR)/%.o)
DIST_ALL_OBJS			:= $(DIST_CPP_OBJS)
DIST_ALL_OBJS 			+= $(DIST_GAS_OBJS)
DIST_ALL_OBJS			+= $(DIST_LIBC_OBJS)
DIST_BOOT_DIR 			:= $(TARGET_DIR)/boot
DIST_BOOT_KERNEL		:= $(DIST_BOOT_DIR)/$(TARGET).kernel
DIST_BOOT_GRUB_DIR 		:= $(DIST_BOOT_DIR)/grub
DIST_BOOT_GRUB_CONFIG 	:= $(DIST_BOOT_GRUB_DIR)/grub.cfg
DIST_INCLUDE_DIR 		:= $(TARGET_DIR)/include
DIST_SOURCES_DIR 		:= $(TARGET_DIR)/src
#

## Flags for the GPP compiler
GPP_FLAGS:=     	\
					-Wall\
					-static\
					-Wfatal-errors\
					-Isrc\
					-Wextra\
					-pedantic\
					-Wshadow\
					-Wpointer-arith\
					-Wcast-align\
					-Wwrite-strings -Wmissing-declarations\
					-Wredundant-decls -Winline -Wno-long-long\
					-Wconversion\
					-m32\
					-fcheck-new\
					-fno-omit-frame-pointer\
					-fno-use-cxa-atexit\
					-nostdlib\
					-fno-rtti\
					-fno-exceptions\
					-fno-leading-underscore\
					-Wno-write-strings
## GNU Assembler Parameters:
GAS_FLAGS:=			--32		

## Flags for the linker
LINK_FLAGS:=		-T linker.ld -m32 -O2 -lgcc -nostdlib -ffreestanding
