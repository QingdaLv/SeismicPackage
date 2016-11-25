/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class org_cpseis_util_GridTransform */

#ifndef _Included_org_cpseis_util_GridTransform
#define _Included_org_cpseis_util_GridTransform
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeCreate
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_org_cpseis_util_GridTransform_nativeCreate
  (JNIEnv *, jobject);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeDestroy
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeDestroy
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetXorigin
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetXorigin
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetYorigin
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetYorigin
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetRotationAngle
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetRotationAngle
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetXgridWidth
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetXgridWidth
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetYgridWidth
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetYgridWidth
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetHandedness
 * Signature: (J)I
 */
JNIEXPORT jint JNICALL Java_org_cpseis_util_GridTransform_nativeGetHandedness
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeIsRightHanded
 * Signature: (J)Z
 */
JNIEXPORT jboolean JNICALL Java_org_cpseis_util_GridTransform_nativeIsRightHanded
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeIsLeftHanded
 * Signature: (J)Z
 */
JNIEXPORT jboolean JNICALL Java_org_cpseis_util_GridTransform_nativeIsLeftHanded
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetCosineAngle
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetCosineAngle
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetSineAngle
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetSineAngle
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetDx11
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetDx11
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetDx21
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetDx21
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetDx12
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetDx12
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetDx22
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetDx22
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetDn11
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetDn11
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetDn21
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetDn21
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetDn12
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetDn12
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetDn22
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetDn22
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetDeterminant
 * Signature: (J)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetDeterminant
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetXlocCoord
 * Signature: (JDD)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetXlocCoord
  (JNIEnv *, jobject, jlong, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetYlocCoord
 * Signature: (JDD)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetYlocCoord
  (JNIEnv *, jobject, jlong, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetXgridCoord
 * Signature: (JDD)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetXgridCoord
  (JNIEnv *, jobject, jlong, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeGetYgridCoord
 * Signature: (JDD)D
 */
JNIEXPORT jdouble JNICALL Java_org_cpseis_util_GridTransform_nativeGetYgridCoord
  (JNIEnv *, jobject, jlong, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeInitialize
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeInitialize
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetXorigin
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetXorigin
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetYorigin
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetYorigin
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetRotationAngle
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetRotationAngle
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetXgridWidth
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetXgridWidth
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetYgridWidth
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetYgridWidth
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetHandedness
 * Signature: (JI)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetHandedness
  (JNIEnv *, jobject, jlong, jint);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetRightHanded
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetRightHanded
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetLeftHanded
 * Signature: (J)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetLeftHanded
  (JNIEnv *, jobject, jlong);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetTransform
 * Signature: (JDDDDDI)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetTransform
  (JNIEnv *, jobject, jlong, jdouble, jdouble, jdouble, jdouble, jdouble, jint);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetRightHandedTransform
 * Signature: (JDDDDD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetRightHandedTransform
  (JNIEnv *, jobject, jlong, jdouble, jdouble, jdouble, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetLeftHandedTransform
 * Signature: (JDDDDD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetLeftHandedTransform
  (JNIEnv *, jobject, jlong, jdouble, jdouble, jdouble, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetDx11
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetDx11
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetDx21
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetDx21
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetDx12
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetDx12
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetDx22
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetDx22
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetDn11
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetDn11
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetDn21
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetDn21
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetDn12
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetDn12
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetDn22
 * Signature: (JD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetDn22
  (JNIEnv *, jobject, jlong, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetForwardRotationMatrix
 * Signature: (JDDDD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetForwardRotationMatrix
  (JNIEnv *, jobject, jlong, jdouble, jdouble, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeSetReverseRotationMatrix
 * Signature: (JDDDD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeSetReverseRotationMatrix
  (JNIEnv *, jobject, jlong, jdouble, jdouble, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeDefineOrigin
 * Signature: (JDDDD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeDefineOrigin
  (JNIEnv *, jobject, jlong, jdouble, jdouble, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeDefineRotationAngle
 * Signature: (JDDDD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeDefineRotationAngle
  (JNIEnv *, jobject, jlong, jdouble, jdouble, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeDefineOriginAndAngle
 * Signature: (JDDDDDD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeDefineOriginAndAngle
  (JNIEnv *, jobject, jlong, jdouble, jdouble, jdouble, jdouble, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeRefineBinCenter
 * Signature: (JDD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeRefineBinCenter
  (JNIEnv *, jobject, jlong, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeRefineRotationAngle
 * Signature: (JDD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeRefineRotationAngle
  (JNIEnv *, jobject, jlong, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeIncrementGridCoords
 * Signature: (JDD)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeIncrementGridCoords
  (JNIEnv *, jobject, jlong, jdouble, jdouble);

/*
 * Class:     org_cpseis_util_GridTransform
 * Method:    nativeDefineTransform
 * Signature: (JI[D[D[D[D[D[D)V
 */
JNIEXPORT void JNICALL Java_org_cpseis_util_GridTransform_nativeDefineTransform
  (JNIEnv *, jobject, jlong, jint, jdoubleArray, jdoubleArray, jdoubleArray, jdoubleArray, jdoubleArray, jdoubleArray);

#ifdef __cplusplus
}
#endif
#endif
