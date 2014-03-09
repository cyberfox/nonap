javac -sourcepath src -d . src/com/cyberfox/util/platform/osx/NoNap.java
javah -jni com.cyberfox.util.platform.osx.NoNap
g++ -I/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Headers -I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk/System/Library/Frameworks/JavaVM.framework/Versions/Current/Headers -arch x86_64 -arch i386 -c -ObjC com_cyberfox_util_platform_osx_NoNap.m
g++ -ObjC -dynamiclib -o libNoNap.jnilib -framework Cocoa com_cyberfox_util_platform_osx_NoNap.o
