package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILUICCAUTHAUTSTYPE.class */
public final class RILUICCAUTHAUTSTYPE {
    public String auts = new String();
    public int autsLen;
    public int autsPresent;

    public static final ArrayList<RILUICCAUTHAUTSTYPE> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILUICCAUTHAUTSTYPE> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILUICCAUTHAUTSTYPE riluiccauthautstype = new RILUICCAUTHAUTSTYPE();
            riluiccauthautstype.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 24);
            arrayList.add(riluiccauthautstype);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILUICCAUTHAUTSTYPE> arrayList) {
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
        if (obj != null && obj.getClass() == RILUICCAUTHAUTSTYPE.class) {
            RILUICCAUTHAUTSTYPE riluiccauthautstype = (RILUICCAUTHAUTSTYPE) obj;
            return this.autsPresent == riluiccauthautstype.autsPresent && this.autsLen == riluiccauthautstype.autsLen && HidlSupport.deepEquals(this.auts, riluiccauthautstype.auts);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.autsPresent))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.autsLen))), Integer.valueOf(HidlSupport.deepHashCode(this.auts)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.autsPresent = hwBlob.getInt32(j + 0);
        this.autsLen = hwBlob.getInt32(j + 4);
        this.auts = hwBlob.getString(j + 8);
        hwParcel.readEmbeddedBuffer(this.auts.getBytes().length + 1, hwBlob.handle(), j + 8 + 0, false);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public final String toString() {
        return "{.autsPresent = " + this.autsPresent + ", .autsLen = " + this.autsLen + ", .auts = " + this.auts + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.autsPresent);
        hwBlob.putInt32(4 + j, this.autsLen);
        hwBlob.putString(8 + j, this.auts);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
