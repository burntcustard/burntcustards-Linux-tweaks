### Dual Booting Windows & [Pop!_OS](https://pop.system76.com/)

* It's way easier to install Pop!_OS first, then Windows. That way they share a ~500MB EFI boot partition.
* Pop!_OS custom installation allows some of the drive to be reserved (unused) for Windows.
* Pop!_OS may not be labelled correctly in BIOS after installing (might just be something like 'UEFI OS').

### Pop!_OS tweaks

* Settings -> Keyboard -> Customize Shortcuts -> Switch windows -> Set to Alt+Tab
* USB Sound devices can be completely removed from the list [like this](https://jamielinux.com/blog/tell-pulseaudio-to-ignore-a-usb-device-using-udev/).
* Pop!_OS attempts to use Bluetooth drivers for a built-in chip that might not work with audio devices. To disable it ([based off this](https://www.gaunt.dev/blog/2022/linux-and-bluetooth-dongle/)):  
  
1. Run `lsusb` and `hciconfig -a` to determine Vendor and Product ID.  
2. Block the built-in device from being used with a udev rule, by creating a file:  
   `sudo -H gedit /etc/udev/rules.d/81-bluetooth-hci.rules`  
3. Paste into the file:  
   `SUBSYSTEM=="usb", ATTRS{idVendor}=="<Vendor ID>", ATTRS{idProduct}=="<Product ID>", ATTR{authorized}="0"`  
   For example:  
   `SUBSYSTEM=="usb", ATTRS{idVendor}=="8087", ATTRS{idProduct}=="0029", ATTR{authorized}="0"`  
4. Reboot.

### Disable Lock Screen in Win10

1. Search for regedit and hit Enter.
2. Navigate to HKEY_LOCAL_MACHINE -> SOFTWARE -> Policies -> Microsoft.
6. Right-click Windows, add a new key named 'Personalization'.
8. Right-click the Personalization key you just created.
9. Create new DWORD (32-bit) Value named NoLockScreen.
12. Double-click the NoLockScreen DWORD you just created.
13. Type 1 in the Value data field.
14. Click OK.
