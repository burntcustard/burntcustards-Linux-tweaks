### Dual Booting Windows & [Pop!_OS](https://pop.system76.com/)

1. It's way easier to install Pop!_OS first, then Windows. That way they share an EFI boot partition.
2. Pop!_OS custom installation allows some of the drive to be reserved (unused) for Windows.
3. Pop!_OS may not be labelled correctly in BIOS after installing (might just be something like 'UEFI OS').

If the default sound device isn't being saved correctly in Pop!_OS, [try this](https://unix.stackexchange.com/a/362258).

USB Sound devices can be completely removed from the list [like this](https://jamielinux.com/blog/tell-pulseaudio-to-ignore-a-usb-device-using-udev/).
