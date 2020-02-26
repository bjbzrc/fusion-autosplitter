# Fissiontroid's Metroid Fusion (JP) Autosplitter
> for [BizHawk 2.4.0](https://github.com/TASVideos/BizHawk/releases/), [mGBA 0.7.2](https://mgba.io/old.html), and [Livesplit 1.7.7](https://livesplit.org/downloads/)

### Installation:

* Go to [Releases](https://github.com/bjbzrc/fusion-autosplitter/releases) and grab the .asl file from the assets

* Place the .asl file anywhere on your computer (the LiveSplit Resources folder is a good place)

* (Optional) Grab and open [Dbgview.exe](https://docs.microsoft.com/en-us/sysinternals/downloads/debugview)

* Open LiveSplit.exe, right click and hit Edit Layout

* Hit + , go to Control and click Scriptable Auto Splitter

* Double-click on it or go to Layout Settings and click the Auto Splitter tab

* Hit Browse then select fusionAutosplitter.asl from wherever you put it

* Hit OK then OK again to close Layout Editor. Open EmuHawk if you haven't already

Dbgview should spit out a message when you open EmuHawk. To fully reset the script, make sure the timer has started from the script's auto start and reset the timer.

*If starting the run from a New Game Plus file (a file with a Metroid next to it), make sure the NG+*
*checkbox is checked in the script's settings in LiveSplit's Layout Editor. By default, the script*
*is set to start from a normal game file.*

### Usage/Notes:

* For now this will only fully auto split for Any% nmc and 1%, though it *can* be used for 100% if you just manually split the cleanup sections

* Esentially, this script just splits whenever you pick up a major upgrade. It splits on the frame before the upgrade text pops up, which is about when the upgrade music starts playing

* The script might work with older versions of LiveSplit, but it definitely does not work with older versions of BizHawk


