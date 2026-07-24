# Vulkan shadow replacements

`shadowcompositing-shadowmap_0xD1EAE8DE.frag.slang` and
`character-shadows_0x973FCE7B.frag.slang` are based on the matching Vulkan
1.4.4 root-dump modules.

The replacements keep the native static, cascade, character, contact, and cloud
shadow paths. They stay active like the DX11 replacements so their independent
runtime branches can apply Improved Shadows to the base shadow and disable the
fake-cloud multiplier without switching the entire shader route.
