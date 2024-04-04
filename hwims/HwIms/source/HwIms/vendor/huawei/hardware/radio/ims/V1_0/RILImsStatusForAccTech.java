package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILImsStatusForAccTech.class */
public final class RILImsStatusForAccTech {
    public int nwMode;
    public int regStatus;
    public int restrictCause;
    public int srvStatus;

    public static final ArrayList<RILImsStatusForAccTech> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsStatusForAccTech> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 16, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsStatusForAccTech rILImsStatusForAccTech = new RILImsStatusForAccTech();
            rILImsStatusForAccTech.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 16);
            arrayList.add(rILImsStatusForAccTech);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsStatusForAccTech> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 16);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 16);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILImsStatusForAccTech.class) {
            RILImsStatusForAccTech rILImsStatusForAccTech = (RILImsStatusForAccTech) obj;
            return this.nwMode == rILImsStatusForAccTech.nwMode && this.srvStatus == rILImsStatusForAccTech.srvStatus && this.restrictCause == rILImsStatusForAccTech.restrictCause && this.regStatus == rILImsStatusForAccTech.regStatus;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.nwMode))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.srvStatus))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.restrictCause))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.regStatus))));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.nwMode = hwBlob.getInt32(0 + j);
        this.srvStatus = hwBlob.getInt32(4 + j);
        this.restrictCause = hwBlob.getInt32(8 + j);
        this.regStatus = hwBlob.getInt32(12 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(16L), 0L);
    }

    public final String toString() {
        return "{.nwMode = " + RILImsRadioTechType.toString(this.nwMode) + ", .srvStatus = " + RILImsStatusType.toString(this.srvStatus) + ", .restrictCause = " + this.restrictCause + ", .regStatus = " + RILImsRegState.toString(this.regStatus) + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.nwMode);
        hwBlob.putInt32(4 + j, this.srvStatus);
        hwBlob.putInt32(8 + j, this.restrictCause);
        hwBlob.putInt32(12 + j, this.regStatus);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(16);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
