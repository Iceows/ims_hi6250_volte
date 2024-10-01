package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILUICCAUTHRESTYPE.class */
public final class RILUICCAUTHRESTYPE {
    public String res = new String();
    public int resLen;
    public int resPresent;

    public static final ArrayList<RILUICCAUTHRESTYPE> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILUICCAUTHRESTYPE> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILUICCAUTHRESTYPE riluiccauthrestype = new RILUICCAUTHRESTYPE();
            riluiccauthrestype.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 24);
            arrayList.add(riluiccauthrestype);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILUICCAUTHRESTYPE> arrayList) {
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
        if (obj != null && obj.getClass() == RILUICCAUTHRESTYPE.class) {
            RILUICCAUTHRESTYPE riluiccauthrestype = (RILUICCAUTHRESTYPE) obj;
            return this.resPresent == riluiccauthrestype.resPresent && this.resLen == riluiccauthrestype.resLen && HidlSupport.deepEquals(this.res, riluiccauthrestype.res);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.resPresent))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.resLen))), Integer.valueOf(HidlSupport.deepHashCode(this.res)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.resPresent = hwBlob.getInt32(j + 0);
        this.resLen = hwBlob.getInt32(j + 4);
        this.res = hwBlob.getString(j + 8);
        hwParcel.readEmbeddedBuffer(this.res.getBytes().length + 1, hwBlob.handle(), j + 8 + 0, false);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public final String toString() {
        return "{.resPresent = " + this.resPresent + ", .resLen = " + this.resLen + ", .res = " + this.res + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.resPresent);
        hwBlob.putInt32(4 + j, this.resLen);
        hwBlob.putString(8 + j, this.res);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
