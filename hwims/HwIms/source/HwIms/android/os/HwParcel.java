package android.os;

import android.annotation.SystemApi;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Arrays;
import libcore.util.NativeAllocationRegistry;

@SystemApi
/* loaded from: HwParcel.class */
public class HwParcel {
    public static final int STATUS_SUCCESS = 0;
    private static final String TAG = "HwParcel";
    private static final NativeAllocationRegistry sNativeRegistry = new NativeAllocationRegistry(HwParcel.class.getClassLoader(), native_init(), 128);
    private long mNativeContext;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: HwParcel$Status.class */
    public @interface Status {
    }

    public HwParcel() {
        native_setup(true);
        sNativeRegistry.registerNativeAllocation(this, this.mNativeContext);
    }

    private HwParcel(boolean z) {
        native_setup(z);
        sNativeRegistry.registerNativeAllocation(this, this.mNativeContext);
    }

    private static final native long native_init();

    private final native void native_setup(boolean z);

    private final native boolean[] readBoolVectorAsArray();

    private final native double[] readDoubleVectorAsArray();

    private final native float[] readFloatVectorAsArray();

    private final native short[] readInt16VectorAsArray();

    private final native int[] readInt32VectorAsArray();

    private final native long[] readInt64VectorAsArray();

    private final native byte[] readInt8VectorAsArray();

    private final native String[] readStringVectorAsArray();

    private final native void writeBoolVector(boolean[] zArr);

    private final native void writeDoubleVector(double[] dArr);

    private final native void writeFloatVector(float[] fArr);

    private final native void writeInt16Vector(short[] sArr);

    private final native void writeInt32Vector(int[] iArr);

    private final native void writeInt64Vector(long[] jArr);

    private final native void writeInt8Vector(byte[] bArr);

    private final native void writeStringVector(String[] strArr);

    public final native void enforceInterface(String str);

    public final native boolean readBool();

    public final ArrayList<Boolean> readBoolVector() {
        return new ArrayList<>(Arrays.asList(HwBlob.wrapArray(readBoolVectorAsArray())));
    }

    public final native HwBlob readBuffer(long j);

    public final native double readDouble();

    public final ArrayList<Double> readDoubleVector() {
        return new ArrayList<>(Arrays.asList(HwBlob.wrapArray(readDoubleVectorAsArray())));
    }

    public final native HwBlob readEmbeddedBuffer(long j, long j2, long j3, boolean z);

    public final native float readFloat();

    public final ArrayList<Float> readFloatVector() {
        return new ArrayList<>(Arrays.asList(HwBlob.wrapArray(readFloatVectorAsArray())));
    }

    public final native short readInt16();

    public final ArrayList<Short> readInt16Vector() {
        return new ArrayList<>(Arrays.asList(HwBlob.wrapArray(readInt16VectorAsArray())));
    }

    public final native int readInt32();

    public final ArrayList<Integer> readInt32Vector() {
        return new ArrayList<>(Arrays.asList(HwBlob.wrapArray(readInt32VectorAsArray())));
    }

    public final native long readInt64();

    public final ArrayList<Long> readInt64Vector() {
        return new ArrayList<>(Arrays.asList(HwBlob.wrapArray(readInt64VectorAsArray())));
    }

    public final native byte readInt8();

    public final ArrayList<Byte> readInt8Vector() {
        return new ArrayList<>(Arrays.asList(HwBlob.wrapArray(readInt8VectorAsArray())));
    }

    public final native String readString();

    public final ArrayList<String> readStringVector() {
        return new ArrayList<>(Arrays.asList(readStringVectorAsArray()));
    }

    public final native IHwBinder readStrongBinder();

    public final native void release();

    public final native void releaseTemporaryStorage();

    public final native void send();

    public final native void verifySuccess();

    public final native void writeBool(boolean z);

    public final void writeBoolVector(ArrayList<Boolean> arrayList) {
        int size = arrayList.size();
        boolean[] zArr = new boolean[size];
        for (int i = 0; i < size; i++) {
            zArr[i] = arrayList.get(i).booleanValue();
        }
        writeBoolVector(zArr);
    }

    public final native void writeBuffer(HwBlob hwBlob);

    public final native void writeDouble(double d);

    public final void writeDoubleVector(ArrayList<Double> arrayList) {
        int size = arrayList.size();
        double[] dArr = new double[size];
        for (int i = 0; i < size; i++) {
            dArr[i] = arrayList.get(i).doubleValue();
        }
        writeDoubleVector(dArr);
    }

    public final native void writeFloat(float f);

    public final void writeFloatVector(ArrayList<Float> arrayList) {
        int size = arrayList.size();
        float[] fArr = new float[size];
        for (int i = 0; i < size; i++) {
            fArr[i] = arrayList.get(i).floatValue();
        }
        writeFloatVector(fArr);
    }

    public final native void writeInt16(short s);

    public final void writeInt16Vector(ArrayList<Short> arrayList) {
        int size = arrayList.size();
        short[] sArr = new short[size];
        for (int i = 0; i < size; i++) {
            sArr[i] = arrayList.get(i).shortValue();
        }
        writeInt16Vector(sArr);
    }

    public final native void writeInt32(int i);

    public final void writeInt32Vector(ArrayList<Integer> arrayList) {
        int size = arrayList.size();
        int[] iArr = new int[size];
        for (int i = 0; i < size; i++) {
            iArr[i] = arrayList.get(i).intValue();
        }
        writeInt32Vector(iArr);
    }

    public final native void writeInt64(long j);

    public final void writeInt64Vector(ArrayList<Long> arrayList) {
        int size = arrayList.size();
        long[] jArr = new long[size];
        for (int i = 0; i < size; i++) {
            jArr[i] = arrayList.get(i).longValue();
        }
        writeInt64Vector(jArr);
    }

    public final native void writeInt8(byte b);

    public final void writeInt8Vector(ArrayList<Byte> arrayList) {
        int size = arrayList.size();
        byte[] bArr = new byte[size];
        for (int i = 0; i < size; i++) {
            bArr[i] = arrayList.get(i).byteValue();
        }
        writeInt8Vector(bArr);
    }

    public final native void writeInterfaceToken(String str);

    public final native void writeStatus(int i);

    public final native void writeString(String str);

    public final void writeStringVector(ArrayList<String> arrayList) {
        writeStringVector((String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    public final native void writeStrongBinder(IHwBinder iHwBinder);
}
