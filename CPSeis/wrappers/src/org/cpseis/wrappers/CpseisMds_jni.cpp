//////// DO NOT EDIT THIS FILE - it is machine generated ////////

#include "CpseisMds.hh"
#include <jni.h>

extern "C"
{
  JNIEXPORT jlong JNICALL Java_org_cpseis_wrappers_CpseisMds_nativeCreate
    (JNIEnv *env, jobject obj)
  {
    CpseisMds *module = new CpseisMds();
    return (jlong)module;
  }
}
