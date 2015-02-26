This is a simple JNI library to disable App Nap on OS X 10.9 (Mavericks), 10.10 (Yosemite) and theoretically any later version.

You need to include both nonap.jar and libNoNap.jnilib in your
classpath, preferably Contents/Resources/Java and referenced in your
Info.plist or whatever equivalent you're using to start your Java app.

Then, in your code, you would call it like:

    import com.cyberfox.util.platform.osx.NoNap;
    
    public static void main(String[] args) {
      System.loadLibrary("NoNap");
      NoNap.dontNapMeBro();
    }

You should be able to see it working by looking at Activity Monitor,
under the Energy tab.  Under 'App Nap', it should say 'No', and should
never change to 'Yes'.

I would recommend first exploring what circumstances your app naps in
the first place (minimized, for example), so you can feel comfortable
that it's actually not napping once you include these libraries.

The build system is rudimentary, and needs improvement.
