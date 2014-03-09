This is a simple JNI library to disable App Nap on OS X 10.9.

You need to include both nonap.jar and libNoNap.jnilib in your
classpath, preferably Contents/Resources/Java and referenced in your
Info.plist or whatever equivalent you're using to start your Java app.

Then, in your code, you would call it like:
    import com.cyberfox.util.platform.osx.NoNap;

    public static void main(String[] args) {
      NoNap.dontNapMeBro();
    }

You should be able to see it working by looking at Activity Monitor,
under the Energy tab.  Under 'App Nap', it should say 'No'.

The build system is rudimentary, and needs improvement.