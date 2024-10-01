package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILImsMtStatusReport.class */
public final class RILImsMtStatusReport {
    public int callStatus;
    public int failCause;
    public String pNumber = new String();

    public static final ArrayList<RILImsMtStatusReport> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsMtStatusReport> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsMtStatusReport rILImsMtStatusReport = new RILImsMtStatusReport();
            rILImsMtStatusReport.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 24);
            arrayList.add(rILImsMtStatusReport);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsMtStatusReport> arrayList) {
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
        if (obj != null && obj.getClass() == RILImsMtStatusReport.class) {
            RILImsMtStatusReport rILImsMtStatusReport = (RILImsMtStatusReport) obj;
            return this.failCause == rILImsMtStatusReport.failCause && this.callStatus == rILImsMtStatusReport.callStatus && HidlSupport.deepEquals(this.pNumber, rILImsMtStatusReport.pNumber);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.failCause))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.callStatus))), Integer.valueOf(HidlSupport.deepHashCode(this.pNumber)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.failCause = hwBlob.getInt32(j + 0);
        this.callStatus = hwBlob.getInt32(j + 4);
        this.pNumber = hwBlob.getString(j + 8);
        hwParcel.readEmbeddedBuffer(this.pNumber.getBytes().length + 1, hwBlob.handle(), j + 8 + 0, false);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public final String toString() {
        return "{.failCause = " + this.failCause + ", .callStatus = " + this.callStatus + ", .pNumber = " + this.pNumber + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.failCause);
        hwBlob.putInt32(4 + j, this.callStatus);
        hwBlob.putString(8 + j, this.pNumber);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
