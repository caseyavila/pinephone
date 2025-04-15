kernel := build/kernel.bin
elf := build/kernel.elf
linker_script := linker.ld

c_source_files := $(wildcard src/*.c)
c_object_files := $(patsubst src/%.c, build/%.o, $(c_source_files))
asm_source_files := $(wildcard src/asm/*.S)
asm_object_files := $(patsubst src/asm/%.S, build/%.o, $(asm_source_files))

CFLAGS = -c -Wall -Werror -pedantic

.PHONY: all run clean

all: $(kernel)

run: $(kernel)
	@sudo sunxi-fel write 0x00010000 $(kernel)
	@sudo sunxi-fel execute 0x00010000

clean:
	@rm -rf build

$(kernel): $(elf)
	@$(OBJCOPY) $(elf) $@ --output-target binary

$(elf): $(c_object_files) $(asm_object_files) $(linker_script)
	@$(LD) -T $(linker_script) -o $@ $(asm_object_files) $(c_object_files)

build/%.o: src/asm/%.S
	@mkdir -p build
	@$(AS) $< -o $@

build/%.o: src/%.c
	@mkdir -p build
	@$(CC) $(CFLAGS) $< -o $@
