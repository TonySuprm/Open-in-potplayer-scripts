This scripts is to be used in conjuction with the extension open in potplayer, follow instructions carefully

PotPlayer Custom Protocol Integration Guide
==========================================

This guide explains how to enable one-click "Play in PotPlayer" from your browser extension using the potplayer:// custom protocol and a helper script.

---

**Included Files:**
- register-potplayer-protocol.bat — Registers PotPlayer as a handler for potplayer:// links using the helper script
- potplayer-url-helper.bat — Helper script that launches PotPlayer with the correct video URL

---

**How to Set Up:**

1. **Extract both BAT files to the same folder.**

2. **Run the registration script as administrator:**
   - Right-click `register-potplayer-protocol.bat` and choose "Run as administrator".
   - This will add the necessary registry entries so PotPlayer can be launched from potplayer:// links using the helper script.

3. **Test the integration:**
   - Press `Win + R` and enter:
     potplayer://http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4
   - PotPlayer should open and play the video.

4. **Use the extension:**
   - In the extension popup, click "Play in PotPlayer" next to any detected video link.
   - The browser may prompt you the first time to allow the action.

---

**Troubleshooting:**
- If PotPlayer does not open, make sure both BAT files are in the same folder and you ran the registration script as administrator.
- If PotPlayer opens but does not play the video, check that the helper script path and PotPlayer path are correct.
- You may need to restart your browser or your computer for changes to take effect.
- If you move the helper script, re-run the registration BAT file.

---

**Unregistering:**
- To remove the protocol handler, delete the `HKEY_CLASSES_ROOT\potplayer` key in the registry (using `regedit.exe`).

---

For questions or updates, see the extension's documentation or support page. 
