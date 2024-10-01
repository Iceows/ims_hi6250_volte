package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILImsExtra.class */
public final class RILImsExtra {
    public final RILImsExtraInfo extraInfo = new RILImsExtraInfo();
    public int extraType;

    public static final ArrayList<RILImsExtra> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsExtra> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 32, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsExtra rILImsExtra = new RILImsExtra();
            rILImsExtra.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 32);
            arrayList.add(rILImsExtra);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsExtra> arrayList) {
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
        if (obj != null && obj.getClass() == RILImsExtra.class) {
            RILImsExtra rILImsExtra = (RILImsExtra) obj;
            return this.extraType == rILImsExtra.extraType && HidlSupport.deepEquals(this.extraInfo, rILImsExtra.extraInfo);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.extraType))), Integer.valueOf(HidlSupport.deepHashCode(this.extraInfo)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.extraType = hwBlob.getInt32(0 + j);
        this.extraInfo.readEmbeddedFromParcel(hwParcel, hwBlob, 8 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(32L), 0L);
    }

    public final String toString() {
        return "{.extraType = " + RILImsExtraType.toString(this.extraType) + ", .extraInfo = " + this.extraInfo + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.extraType);
        this.extraInfo.writeEmbeddedToBlob(hwBlob, 8 + j);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(32);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
