	.xdef __MIN_AMS_3_10_AND_NOT___kernel_library_header

.section _st40
| Check the number of ROM calls available.
	cmp.l #0x60D,(%a0,-4) /* TIOS_entries */

.section _st10011, "d"
	.ascii "3.10"
