package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILImsCallModify.class */
public final class RILImsCallModify {
    public int callIndex;
    public final RILImsCallDetails currCallDetails = new RILImsCallDetails();
    public final RILImsCallDetails destCallDetails = new RILImsCallDetails();
    public int modifyReason;

    public static final ArrayList<RILImsCallModify> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsCallModify> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsCallModify rILImsCallModify = new RILImsCallModify();
            rILImsCallModify.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 24);
            arrayList.add(rILImsCallModify);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsCallModify> arrayList) {
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
        if (obj != null && obj.getClass() == RILImsCallModify.class) {
            RILImsCallModify rILImsCallModify = (RILImsCallModify) obj;
            return this.callIndex == rILImsCallModify.callIndex && HidlSupport.deepEquals(this.currCallDetails, rILImsCallModify.currCallDetails) && HidlSupport.deepEquals(this.destCallDetails, rILImsCallModify.destCallDetails) && this.modifyReason == rILImsCallModify.modifyReason;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.callIndex))), Integer.valueOf(HidlSupport.deepHashCode(this.currCallDetails)), Integer.valueOf(HidlSupport.deepHashCode(this.destCallDetails)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.modifyReason))));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.callIndex = hwBlob.getInt32(0 + j);
        this.currCallDetails.readEmbeddedFromParcel(hwParcel, hwBlob, 4 + j);
        this.destCallDetails.readEmbeddedFromParcel(hwParcel, hwBlob, 12 + j);
        this.modifyReason = hwBlob.getInt32(20 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public final String toString() {
        return "{.callIndex = " + this.callIndex + ", .currCallDetails = " + this.currCallDetails + ", .destCallDetails = " + this.destCallDetails + ", .modifyReason = " + this.modifyReason + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.callIndex);
        this.currCallDetails.writeEmbeddedToBlob(hwBlob, 4 + j);
        this.destCallDetails.writeEmbeddedToBlob(hwBlob, 12 + j);
        hwBlob.putInt32(20 + j, this.modifyReason);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
