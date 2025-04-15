SECTIONS
{
    . = 0x00010000;

    .boot : AT(0) {
        INPUT_SECTION_FLAGS(SHF_ALLOC) *(*)
    }

    .text : {
        *(.text .text.*)
    }

    .rodata : {
        *(.rodata .rodata.*)
    }

    .data.rel.ro : {
        *(.data.rel.ro.local*) *(.data.rel.ro .data.rel.ro.*)
    }
}
