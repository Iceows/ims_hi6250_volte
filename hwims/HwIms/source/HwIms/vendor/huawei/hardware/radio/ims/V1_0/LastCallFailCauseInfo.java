package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: LastCallFailCauseInfo.class */
public final class LastCallFailCauseInfo {
    public int causeCode;
    public String vendorCause = new String();

    public static final ArrayList<LastCallFailCauseInfo> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<LastCallFailCauseInfo> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            LastCallFailCauseInfo lastCallFailCauseInfo = new LastCallFailCauseInfo();
            lastCallFailCauseInfo.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 24);
            arrayList.add(lastCallFailCauseInfo);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<LastCallFailCauseInfo> arrayList) {
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
        if (obj != null && obj.getClass() == LastCallFailCauseInfo.class) {
            LastCallFailCauseInfo lastCallFailCauseInfo = (LastCallFailCauseInfo) obj;
            return this.causeCode == lastCallFailCauseInfo.causeCode && HidlSupport.deepEquals(this.vendorCause, lastCallFailCauseInfo.vendorCause);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.causeCode))), Integer.valueOf(HidlSupport.deepHashCode(this.vendorCause)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.causeCode = hwBlob.getInt32(j + 0);
        this.vendorCause = hwBlob.getString(j + 8);
        hwParcel.readEmbeddedBuffer(this.vendorCause.getBytes().length + 1, hwBlob.handle(), j + 8 + 0, false);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public final String toString() {
        return "{.causeCode = " + LastCallFailCause.toString(this.causeCode) + ", .vendorCause = " + this.vendorCause + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.causeCode);
        hwBlob.putString(8 + j, this.vendorCause);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
