//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisTdc.hh"
#include <jni.h>

extern "C"
{
  JNIEXPORT jlong JNICALL Java_org_cpseis_wrappers_CpseisTdc_nativeCreate
    (JNIEnv *env, jobject obj)
  {
    CpseisTdc *module = new CpseisTdc();
    return (jlong)module;
  }
}
