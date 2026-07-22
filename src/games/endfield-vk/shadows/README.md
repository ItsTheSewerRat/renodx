# Vulkan cloud-shadow variants

`0xD1EAE8DE.frag.spv` and `0x973FCE7B.frag.spv` are cloud-shadow-off
variants of the matching Vulkan 1.4.4 root-dump modules. `On / Vanilla` keeps
the game's original shader bound; `Off` selects these variants.

Each variant differs from its native module by one SPIR-V operand: the second
source of result `%790` is changed from `%787` to `%float_1`. The existing
`FMix` therefore returns `1.0`, neutralizing only the fake-cloud multiplier.
Static, cascade, character, and contact-shadow instructions remain byte-for-byte
native. The adjacent `.spvasm` files are auditable disassemblies of the embedded
binaries.
