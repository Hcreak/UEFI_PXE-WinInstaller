#! /bin/bash

make bin-x86_64-efi/ipxe.efi EMBED=boot.ipxe
cp -f bin-x86_64-efi/ipxe.efi ../../
