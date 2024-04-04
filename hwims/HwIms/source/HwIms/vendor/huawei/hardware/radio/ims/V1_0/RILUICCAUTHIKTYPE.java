package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILUICCAUTHIKTYPE.class */
public final class RILUICCAUTHIKTYPE {
    public String ik = new String();
    public int ikLen;
    public int ikPresent;

    public static final ArrayList<RILUICCAUTHIKTYPE> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILUICCAUTHIKTYPE> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILUICCAUTHIKTYPE riluiccauthiktype = new RILUICCAUTHIKTYPE();
            riluiccauthiktype.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 24);
            arrayList.add(riluiccauthiktype);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILUICCAUTHIKTYPE> arrayList) {
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
        if (obj != null && obj.getClass() == RILUICCAUTHIKTYPE.class) {
            RILUICCAUTHIKTYPE riluiccauthiktype = (RILUICCAUTHIKTYPE) obj;
            return this.ikPresent == riluiccauthiktype.ikPresent && this.ikLen == riluiccauthiktype.ikLen && HidlSupport.deepEquals(this.ik, riluiccauthiktype.ik);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.ikPresent))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.ikLen))), Integer.valueOf(HidlSupport.deepHashCode(this.ik)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.ikPresent = hwBlob.getInt32(j + 0);
        this.ikLen = hwBlob.getInt32(j + 4);
        this.ik = hwBlob.getString(j + 8);
        hwParcel.readEmbeddedBuffer(this.ik.getBytes().length + 1, hwBlob.handle(), j + 8 + 0, false);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public final String toString() {
        return "{.ikPresent = " + this.ikPresent + ", .ikLen = " + this.ikLen + ", .ik = " + this.ik + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.ikPresent);
        hwBlob.putInt32(4 + j, this.ikLen);
        hwBlob.putString(8 + j, this.ik);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
