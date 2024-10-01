package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILImsHandover.class */
public final class RILImsHandover {
    public int dstTech;
    public int errorCode;
    public final RILImsExtra hoExtra = new RILImsExtra();
    public int hoType;
    public int srcTech;

    public static final ArrayList<RILImsHandover> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsHandover> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 56, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsHandover rILImsHandover = new RILImsHandover();
            rILImsHandover.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 56);
            arrayList.add(rILImsHandover);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsHandover> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 56);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 56);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILImsHandover.class) {
            RILImsHandover rILImsHandover = (RILImsHandover) obj;
            return this.hoType == rILImsHandover.hoType && this.srcTech == rILImsHandover.srcTech && this.dstTech == rILImsHandover.dstTech && HidlSupport.deepEquals(this.hoExtra, rILImsHandover.hoExtra) && this.errorCode == rILImsHandover.errorCode;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.hoType))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.srcTech))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.dstTech))), Integer.valueOf(HidlSupport.deepHashCode(this.hoExtra)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.errorCode))));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.hoType = hwBlob.getInt32(0 + j);
        this.srcTech = hwBlob.getInt32(4 + j);
        this.dstTech = hwBlob.getInt32(8 + j);
        this.hoExtra.readEmbeddedFromParcel(hwParcel, hwBlob, 16 + j);
        this.errorCode = hwBlob.getInt32(48 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(56L), 0L);
    }

    public final String toString() {
        return "{.hoType = " + RILImsHandoverState.toString(this.hoType) + ", .srcTech = " + RILImsRadioTechType.toString(this.srcTech) + ", .dstTech = " + RILImsRadioTechType.toString(this.dstTech) + ", .hoExtra = " + this.hoExtra + ", .errorCode = " + this.errorCode + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.hoType);
        hwBlob.putInt32(4 + j, this.srcTech);
        hwBlob.putInt32(8 + j, this.dstTech);
        this.hoExtra.writeEmbeddedToBlob(hwBlob, 16 + j);
        hwBlob.putInt32(48 + j, this.errorCode);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(56);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
