#include <stdio.h>
#include <jni.h>
#include "com_cyberfox_util_platform_osx_NoNap.h"
#import <Cocoa/Cocoa.h>

/*
 * Class:     com_cyberfox_jbidwatcher_osx_NoNap
 * Method:    DontNapMeBro
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_com_cyberfox_util_platform_osx_NoNap_nativeDontNapMeBro
  (JNIEnv * env, jclass javaClass) 
{
  if ([[NSProcessInfo processInfo] respondsToSelector:@selector(beginActivityWithOptions:reason:)]) {
    [[NSProcessInfo processInfo] beginActivityWithOptions:0x00FFFFFF reason:@"can't sleep; clowns will eat me"];
  }
}
