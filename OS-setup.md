### Dual Booting Windows & [Pop!_OS](https://pop.system76.com/)

* It's way easier to install Pop!_OS first, then Windows. That way they share a ~500MB EFI boot partition.
* Pop!_OS custom installation allows some of the drive to be reserved (unused) for Windows.
* Pop!_OS may not be labelled correctly in BIOS after installing (might just be something like 'UEFI OS').

### Pop!_OS tweaks

* Settings -> Keyboard -> Customize Shortcuts -> Switch windows -> Set to Alt+Tab
* USB Sound devices can be completely removed from the list [like this](https://jamielinux.com/blog/tell-pulseaudio-to-ignore-a-usb-device-using-udev/).
* If the default sound device isn't being saved correctly in Pop!_OS, [try this](https://unix.stackexchange.com/a/362258).  
  Currently the end of /etc/pulse/default.pa looks like:
  ```
  set-card-profile 1 input:analog-stereo
  set-default-source 0
  set-card-profile 2 output:iec958-stereo
  set-default-sink 0
  ```

### Disable Lock Screen in Win10

1. Search for regedit and hit Enter.
2. Navigate to HKEY_LOCAL_MACHINE -> SOFTWARE -> Policies -> Microsoft.
6. Right-click Windows, add a new key named 'Personalization'.
8. Right-click the Personalization key you just created.
9. Create new DWORD (32-bit) Value named NoLockScreen.
12. Double-click the NoLockScreen DWORD you just created.
13. Type 1 in the Value data field.
14. Click OK.
