MEMORY
{
    /* Define the memory regions of your system */
    RAM (rwx) : ORIGIN = 0x80000000, LENGTH = 1024
}

SECTIONS
{
    /* Set up the code section */
    .text :
    {
        *(.text)
    } > RAM

    /* Set up the data section */
    .data :
    {
        *(.data)
    } > RAM

    /* Set up the bss section */
    .bss :
    {
        *(.bss)
    } > RAM

    /* Set up the heap region (adjust the size as needed) */
    __heap_start = ORIGIN(RAM) + LENGTH(RAM) / 2;
    __heap_end = ORIGIN(RAM) + LENGTH(RAM);

    .heap (NOLOAD) :
    {
        __heap_start = .;
        *(.heap)
        __heap_end = .;
    } > RAM

    /* Set up the stack region (adjust the size as needed) */
    __stack_end = ORIGIN(RAM) + LENGTH(RAM) - 4;

    .stack (NOLOAD) :
    {
        __stack_end = .;
    } > RAM
}
