package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILUICCAUTHCKTYPE.class */
public final class RILUICCAUTHCKTYPE {
    public String ck = new String();
    public int ckLen;
    public int ckPresent;

    public static final ArrayList<RILUICCAUTHCKTYPE> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILUICCAUTHCKTYPE> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILUICCAUTHCKTYPE riluiccauthcktype = new RILUICCAUTHCKTYPE();
            riluiccauthcktype.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 24);
            arrayList.add(riluiccauthcktype);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILUICCAUTHCKTYPE> arrayList) {
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
        if (obj != null && obj.getClass() == RILUICCAUTHCKTYPE.class) {
            RILUICCAUTHCKTYPE riluiccauthcktype = (RILUICCAUTHCKTYPE) obj;
            return this.ckPresent == riluiccauthcktype.ckPresent && this.ckLen == riluiccauthcktype.ckLen && HidlSupport.deepEquals(this.ck, riluiccauthcktype.ck);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.ckPresent))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.ckLen))), Integer.valueOf(HidlSupport.deepHashCode(this.ck)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.ckPresent = hwBlob.getInt32(j + 0);
        this.ckLen = hwBlob.getInt32(j + 4);
        this.ck = hwBlob.getString(j + 8);
        hwParcel.readEmbeddedBuffer(this.ck.getBytes().length + 1, hwBlob.handle(), j + 8 + 0, false);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public final String toString() {
        return "{.ckPresent = " + this.ckPresent + ", .ckLen = " + this.ckLen + ", .ck = " + this.ck + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.ckPresent);
        hwBlob.putInt32(4 + j, this.ckLen);
        hwBlob.putString(8 + j, this.ck);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
