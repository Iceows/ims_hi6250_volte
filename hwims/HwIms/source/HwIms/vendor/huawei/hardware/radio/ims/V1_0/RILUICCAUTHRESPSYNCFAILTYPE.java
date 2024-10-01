package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILUICCAUTHRESPSYNCFAILTYPE.class */
public final class RILUICCAUTHRESPSYNCFAILTYPE {
    public final RILUICCAUTHAUTSTYPE autsData = new RILUICCAUTHAUTSTYPE();

    public static final ArrayList<RILUICCAUTHRESPSYNCFAILTYPE> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILUICCAUTHRESPSYNCFAILTYPE> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILUICCAUTHRESPSYNCFAILTYPE riluiccauthrespsyncfailtype = new RILUICCAUTHRESPSYNCFAILTYPE();
            riluiccauthrespsyncfailtype.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 24);
            arrayList.add(riluiccauthrespsyncfailtype);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILUICCAUTHRESPSYNCFAILTYPE> arrayList) {
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
        return obj != null && obj.getClass() == RILUICCAUTHRESPSYNCFAILTYPE.class && HidlSupport.deepEquals(this.autsData, ((RILUICCAUTHRESPSYNCFAILTYPE) obj).autsData);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.autsData)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.autsData.readEmbeddedFromParcel(hwParcel, hwBlob, 0 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public final String toString() {
        return "{.autsData = " + this.autsData + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        this.autsData.writeEmbeddedToBlob(hwBlob, 0 + j);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
