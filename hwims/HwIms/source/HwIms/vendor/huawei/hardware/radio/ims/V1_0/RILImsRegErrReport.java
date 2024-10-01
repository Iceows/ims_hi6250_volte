package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILImsRegErrReport.class */
public final class RILImsRegErrReport {
    public int failCause;
    public int failDomain;
    public int failStage;
    public String failStr = new String();

    public static final ArrayList<RILImsRegErrReport> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsRegErrReport> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 32, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsRegErrReport rILImsRegErrReport = new RILImsRegErrReport();
            rILImsRegErrReport.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 32);
            arrayList.add(rILImsRegErrReport);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsRegErrReport> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 32);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 32);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILImsRegErrReport.class) {
            RILImsRegErrReport rILImsRegErrReport = (RILImsRegErrReport) obj;
            return this.failDomain == rILImsRegErrReport.failDomain && this.failStage == rILImsRegErrReport.failStage && this.failCause == rILImsRegErrReport.failCause && HidlSupport.deepEquals(this.failStr, rILImsRegErrReport.failStr);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.failDomain))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.failStage))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.failCause))), Integer.valueOf(HidlSupport.deepHashCode(this.failStr)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.failDomain = hwBlob.getInt32(j + 0);
        this.failStage = hwBlob.getInt32(j + 4);
        this.failCause = hwBlob.getInt32(j + 8);
        this.failStr = hwBlob.getString(j + 16);
        hwParcel.readEmbeddedBuffer(this.failStr.getBytes().length + 1, hwBlob.handle(), j + 16 + 0, false);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(32L), 0L);
    }

    public final String toString() {
        return "{.failDomain = " + this.failDomain + ", .failStage = " + this.failStage + ", .failCause = " + this.failCause + ", .failStr = " + this.failStr + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.failDomain);
        hwBlob.putInt32(4 + j, this.failStage);
        hwBlob.putInt32(8 + j, this.failCause);
        hwBlob.putString(16 + j, this.failStr);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(32);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
