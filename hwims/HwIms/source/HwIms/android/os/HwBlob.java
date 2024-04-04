package android.os;

import android.annotation.SystemApi;
import libcore.util.NativeAllocationRegistry;

@SystemApi
/* loaded from: HwBlob.class */
public class HwBlob {
    private static final String TAG = "HwBlob";
    private static final NativeAllocationRegistry sNativeRegistry = new NativeAllocationRegistry(HwBlob.class.getClassLoader(), native_init(), 128);
    private long mNativeContext;

    public HwBlob(int i) {
        native_setup(i);
        sNativeRegistry.registerNativeAllocation(this, this.mNativeContext);
    }

    private static final native long native_init();

    private final native void native_setup(int i);

    public static Boolean[] wrapArray(boolean[] zArr) {
        int length = zArr.length;
        Boolean[] boolArr = new Boolean[length];
        for (int i = 0; i < length; i++) {
            boolArr[i] = Boolean.valueOf(zArr[i]);
        }
        return boolArr;
    }

    public static Byte[] wrapArray(byte[] bArr) {
        int length = bArr.length;
        Byte[] bArr2 = new Byte[length];
        for (int i = 0; i < length; i++) {
            bArr2[i] = Byte.valueOf(bArr[i]);
        }
        return bArr2;
    }

    public static Double[] wrapArray(double[] dArr) {
        int length = dArr.length;
        Double[] dArr2 = new Double[length];
        for (int i = 0; i < length; i++) {
            dArr2[i] = Double.valueOf(dArr[i]);
        }
        return dArr2;
    }

    public static Float[] wrapArray(float[] fArr) {
        int length = fArr.length;
        Float[] fArr2 = new Float[length];
        for (int i = 0; i < length; i++) {
            fArr2[i] = Float.valueOf(fArr[i]);
        }
        return fArr2;
    }

    public static Integer[] wrapArray(int[] iArr) {
        int length = iArr.length;
        Integer[] numArr = new Integer[length];
        for (int i = 0; i < length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        return numArr;
    }

    public static Long[] wrapArray(long[] jArr) {
        int length = jArr.length;
        Long[] lArr = new Long[length];
        for (int i = 0; i < length; i++) {
            lArr[i] = Long.valueOf(jArr[i]);
        }
        return lArr;
    }

    public static Short[] wrapArray(short[] sArr) {
        int length = sArr.length;
        Short[] shArr = new Short[length];
        for (int i = 0; i < length; i++) {
            shArr[i] = Short.valueOf(sArr[i]);
        }
        return shArr;
    }

    public final native void copyToBoolArray(long j, boolean[] zArr, int i);

    public final native void copyToDoubleArray(long j, double[] dArr, int i);

    public final native void copyToFloatArray(long j, float[] fArr, int i);

    public final native void copyToInt16Array(long j, short[] sArr, int i);

    public final native void copyToInt32Array(long j, int[] iArr, int i);

    public final native void copyToInt64Array(long j, long[] jArr, int i);

    public final native void copyToInt8Array(long j, byte[] bArr, int i);

    public final native boolean getBool(long j);

    public final native double getDouble(long j);

    public final native float getFloat(long j);

    public final native short getInt16(long j);

    public final native int getInt32(long j);

    public final native long getInt64(long j);

    public final native byte getInt8(long j);

    public final native String getString(long j);

    public final native long handle();

    public final native void putBlob(long j, HwBlob hwBlob);

    public final native void putBool(long j, boolean z);

    public final native void putBoolArray(long j, boolean[] zArr);

    public final native void putDouble(long j, double d);

    public final native void putDoubleArray(long j, double[] dArr);

    public final native void putFloat(long j, float f);

    public final native void putFloatArray(long j, float[] fArr);

    public final native void putInt16(long j, short s);

    public final native void putInt16Array(long j, short[] sArr);

    public final native void putInt32(long j, int i);

    public final native void putInt32Array(long j, int[] iArr);

    public final native void putInt64(long j, long j2);

    public final native void putInt64Array(long j, long[] jArr);

    public final native void putInt8(long j, byte b);

    public final native void putInt8Array(long j, byte[] bArr);

    public final native void putString(long j, String str);
}
