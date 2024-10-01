package android.hidl.base.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: DebugInfo.class */
public final class DebugInfo {
    public int arch;
    public int pid;
    public long ptr;

    /* loaded from: DebugInfo$Architecture.class */
    public static final class Architecture {
        public static final int IS_32BIT = 2;
        public static final int IS_64BIT = 1;
        public static final int UNKNOWN = 0;

        public static final String dumpBitfield(int i) {
            ArrayList arrayList = new ArrayList();
            int i2 = 0;
            arrayList.add("UNKNOWN");
            if ((i & 1) == 1) {
                arrayList.add("IS_64BIT");
                i2 = 0 | 1;
            }
            int i3 = i2;
            if ((i & 2) == 2) {
                arrayList.add("IS_32BIT");
                i3 = i2 | 2;
            }
            if (i != i3) {
                arrayList.add("0x" + Integer.toHexString(i3 & i));
            }
            return String.join(" | ", arrayList);
        }

        public static final String toString(int i) {
            if (i == 0) {
                return "UNKNOWN";
            }
            if (i == 1) {
                return "IS_64BIT";
            }
            if (i == 2) {
                return "IS_32BIT";
            }
            return "0x" + Integer.toHexString(i);
        }
    }

    public static final ArrayList<DebugInfo> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<DebugInfo> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            DebugInfo debugInfo = new DebugInfo();
            debugInfo.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 24);
            arrayList.add(debugInfo);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<DebugInfo> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 24);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 24);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == DebugInfo.class) {
            DebugInfo debugInfo = (DebugInfo) obj;
            return this.pid == debugInfo.pid && this.ptr == debugInfo.ptr && this.arch == debugInfo.arch;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.pid))), Integer.valueOf(HidlSupport.deepHashCode(Long.valueOf(this.ptr))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.arch))));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.pid = hwBlob.getInt32(0 + j);
        this.ptr = hwBlob.getInt64(8 + j);
        this.arch = hwBlob.getInt32(16 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public final String toString() {
        return "{.pid = " + this.pid + ", .ptr = " + this.ptr + ", .arch = " + Architecture.toString(this.arch) + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.pid);
        hwBlob.putInt64(8 + j, this.ptr);
        hwBlob.putInt32(16 + j, this.arch);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
