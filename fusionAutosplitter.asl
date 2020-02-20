// Autosplitter script for Metroid Fusion (JP) on BizHawk 2.4.0 by Fissiontroid
// ToDo: Find start menu ram value
state("EmuHawk" , "2.4.0") {
   // "start" describes an IWRAM value at 0E28 that ties to a sound (I think)
   // that is loaded on the frame the player presses A to start the game.
   // "notStart" describes another IWRAM value that correlates with other sounds (maybe?),
   // which is found at the address 0E4C.This address has a value
   // on the frame an upgrade jingle is loaded and on the frame Samus starts
   // turning forward at the end of the game.

    uint start : "mgba.dll", 0x000DB020, 0x10, 0x18, 0x1E8, 0x30, 0xE28;
	uint notStart : "mgba.dll", 0x000DB020, 0x10, 0x18, 0x1E8, 0x30, 0xE4C;
}

init { 
	print("Autosplitter is tied to game");
	uint startCounter;
	uint split;
	vars.startCounter = 0;
	vars.split = 0;
}

start {
	if (current.start == 16723 && vars.startCounter < 2) {
	    vars.startCounter++;
	    print("added 1 to start counter");
	}
	if (vars.startCounter == 2) {
		return true;
	}
}

split {
	// Goal: split LiveSplit whenever notStart equals a jingle value
	// (276299826 or 7340028) or the end ship value (9207808)
	if (vars.split < 18) {
		if (current.notStart == 276299826 || current.notStart == 7340028 ||
	        current.notStart == 9207808) {
	        vars.split++;
	        print("\n\n**********Splitting**********\n\n ");
	        return true;
	    }
	    if (current.notStart == 9207808) {
	        print("Timer should be stopped");
	    }
	}
}

reset {
	// Find start menu IWRAM value and reset timer when value is hit
	// if (menu address == value) {
	//     return true;
	//     print("Timer reset");
	// }
}
