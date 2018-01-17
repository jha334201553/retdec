import "elf"

rule gcc_45x
{
	meta:
		tool = "C"
		name = "GCC"
		version = "4.5.x"
		pattern = "780B297C3600215400000038F0FF2194A603087C000001900?10003D????A885????0048E0FF2194A602087C1?00?193??10?03F24000190????1?881?00?1930000802F1?00?1931?00?193??009E40??10?03F??10?03F??????3B??????3B"
	strings:
		$1 = { 78 0B 29 7C 36 00 21 54 00 00 00 38 F0 FF 21 94 A6 03 08 7C 00 00 01 90 0? 10 00 3D ?? ?? A8 85 ?? ?? 00 48 E0 FF 21 94 A6 02 08 7C 1? 00 ?1 93 ?? 10 ?0 3F 24 00 01 90 ?? ?? 1? 88 1? 00 ?1 93 00 00 80 2F 1? 00 ?1 93 1? 00 ?1 93 ?? 00 9E 40 ?? 10 ?0 3F ?? 10 ?0 3F ?? ?? ?? 3B ?? ?? ?? 3B }
	condition:
		$1 at elf.entry_point
}
