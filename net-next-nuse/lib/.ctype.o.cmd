cmd_lib/ctype.o := mkdir -p lib/; gcc -Wp,-MD,lib/.ctype.o.d -O3 -fomit-frame-pointer -fno-tree-loop-distribute-patterns -g3 -Wall -Wstrict-prototypes -Wno-trigraphs -fno-inline -fno-strict-aliasing -fno-common -fno-delete-null-pointer-checks -fno-builtin -fno-stack-protector -Wno-unused -Wno-pointer-sign -fpic -DPIC -D_DEBUG  -Iarch/lib/include -nostdinc -D__KERNEL__ -iwithprefix ./include -DKBUILD_BASENAME=\"clnt\" -DKBUILD_MODNAME=\"nsc\" -DMODVERSIONS -DEXPORT_SYMTAB -U__FreeBSD__ -D__linux__=1 -Dlinux=1 -D__linux=1 -DCONFIG_DEFAULT_HOSTNAME=\"lib\" -Iarch/lib/include/generated/uapi -Iarch/lib/include/generated -I./include -Iarch/lib/include/uapi -I./include/uapi -I./include/generated/uapi -include ./include/linux/kconfig.h -Iarch/lib -I. -DCONFIG_64BIT -c lib/ctype.c -o lib/ctype.o

source_lib/ctype.o := lib/ctype.c

deps_lib/ctype.o := \
  include/linux/ctype.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/uapi/linux/types.h \
  arch/lib/include/generated/asm/types.h \
  include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/lib/include/asm/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/posix_types.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  arch/lib/include/generated/asm/posix_types.h \
  include/uapi/asm-generic/posix_types.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \

lib/ctype.o: $(deps_lib/ctype.o)

$(deps_lib/ctype.o):
