# SubManager

SubManager is an iOS Application, written in Objective-C, which can enable/disable your Cydia Substrate extensions; this may be useful if you still need Jailbreak, but you don't want to slow down your device.

### Compiling

(If you don't care about this, just jump to [Installing](#Installing-for-noobs) section.)

Note: You must use a compiler with a valid toolchain. 
 - for Windows, GNU/Linux, macOS users: follow setup on [iPhoneDevWiki](http://iphonedevwiki.net/index.php/Theos/Setup);
- for iOS users: install miniCode from Cydia (required dependencies will be automatically installed).

### Configuring and installing

Once compiled, you must follow some additional steps to grant root permissions to SubManager:
1. Go into bin/release folder, you will find *SubManager.app* folder;
2. Open *SubManager.app*, and rename *SubManager* to *SubManager_* ;
3. Change ownership and permissions of *SubManager_* , in order to allow the application to get suid. Open a terminal - with root access - in current folder, and run these two commands:
```bash
# chown root:wheel SubManager_
# chmod 6755 SubManager_
```
Now, you must move *SubManager.app* in **/Applications** folder (remember, **/Applications**, not **/var/mobile/Applications**, otherwise it won't work).

Congratulations, you have installed SubManager from source!

### Installing (for noobs)

You can find a Debian package in Releases section. Open the file with iFile/Filza and install it.
