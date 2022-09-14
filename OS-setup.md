### Dual Booting Windows & [Pop!_OS](https://pop.system76.com/)

* It's way easier to install Pop!_OS first, then Windows. That way they share a ~500MB EFI boot partition.
* Pop!_OS custom installation allows some of the drive to be reserved (unused) for Windows.
* Pop!_OS may not be labelled correctly in BIOS after installing (might just be something like 'UEFI OS').

### Pop!_OS tweaks

* Settings -> Keyboard -> Customize Shortcuts -> Switch windows -> Set to Alt+Tab
* USB Sound devices can be completely removed from the list [like this](https://jamielinux.com/blog/tell-pulseaudio-to-ignore-a-usb-device-using-udev/).
* Pop!_OS attempts to use Bluetooth drivers for a built-in chip that might not work with audio devices. To disable it ([based off this](https://silvae86.github.io/2020/04/17/disable-specific-bluetooth-adapter-ubuntu-19/)):
  1. Create a new file to contain a script:  
     `sudo gedit /etc/init.d/disable_builtin_bluetooth`
  3. Paste this inside:
     ```bash
     #!/bin/bash
     echo "Disabling hci0 bluetooth adapter"
     /usr/bin/hciconfig hci0 down &
     ```
  3. Give it execution permissions  
    `sudo chmod +x /etc/init.d/disable_builtin_bluetooth`
  4. Run update-rc.d to wire all the symlinks needed for boot  
     `update-rc.d disable_builtin_bluetooth start 26 2 3 4 5 .`
  6. Reboot

### Disable Lock Screen in Win10

1. Search for regedit and hit Enter.
2. Navigate to HKEY_LOCAL_MACHINE -> SOFTWARE -> Policies -> Microsoft.
6. Right-click Windows, add a new key named 'Personalization'.
8. Right-click the Personalization key you just created.
9. Create new DWORD (32-bit) Value named NoLockScreen.
12. Double-click the NoLockScreen DWORD you just created.
13. Type 1 in the Value data field.
14. Click OK.
