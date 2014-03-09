package com.cyberfox.util.platform.osx;

public class NoNap {
    public static boolean loadNativeLibrary() {
        boolean libraryLoaded = false;

	try {
	    System.loadLibrary("NoNap");
	    libraryLoaded = true;
	} catch(UnsatisfiedLinkError ignored) {
	    // Ignore and leave libLoaded false.
	} catch(SecurityException ignored) {
	    // Ignore and leave libLoaded false.
	}

	return libraryLoaded;
    }

    /**
     * Informs OS X Mavericks that this process should not be forced to sleep, even
     * if it meets the typical criteria.
     */
    public static void dontNapMeBro() {
        if (loadNativeLibrary()) {
            nativeDontNapMeBro();
	} else {
	    System.err.println("Can't disable App Nap; native code not available.");
	}
    }

    /**
     * Let's OS X Mavericks know that this application is not to be forced into sleep.
     * @exception java.lang.UnsatisfiedLinkError if JNI is not available.
     */
    private static native void nativeDontNapMeBro();
}
