package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILUICCKSNAFAUTHPARAMS.class */
public final class RILUICCKSNAFAUTHPARAMS {
    public int impiLen;
    public int nafLen;
    public String nafId = new String();
    public String impi = new String();

    public static final ArrayList<RILUICCKSNAFAUTHPARAMS> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILUICCKSNAFAUTHPARAMS> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 48, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILUICCKSNAFAUTHPARAMS riluiccksnafauthparams = new RILUICCKSNAFAUTHPARAMS();
            riluiccksnafauthparams.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 48);
            arrayList.add(riluiccksnafauthparams);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILUICCKSNAFAUTHPARAMS> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 48);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 48);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILUICCKSNAFAUTHPARAMS.class) {
            RILUICCKSNAFAUTHPARAMS riluiccksnafauthparams = (RILUICCKSNAFAUTHPARAMS) obj;
            return this.nafLen == riluiccksnafauthparams.nafLen && HidlSupport.deepEquals(this.nafId, riluiccksnafauthparams.nafId) && this.impiLen == riluiccksnafauthparams.impiLen && HidlSupport.deepEquals(this.impi, riluiccksnafauthparams.impi);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.nafLen))), Integer.valueOf(HidlSupport.deepHashCode(this.nafId)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.impiLen))), Integer.valueOf(HidlSupport.deepHashCode(this.impi)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.nafLen = hwBlob.getInt32(j + 0);
        this.nafId = hwBlob.getString(j + 8);
        hwParcel.readEmbeddedBuffer(this.nafId.getBytes().length + 1, hwBlob.handle(), j + 8 + 0, false);
        this.impiLen = hwBlob.getInt32(j + 24);
        this.impi = hwBlob.getString(j + 32);
        hwParcel.readEmbeddedBuffer(this.impi.getBytes().length + 1, hwBlob.handle(), j + 32 + 0, false);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(48L), 0L);
    }

    public final String toString() {
        return "{.nafLen = " + this.nafLen + ", .nafId = " + this.nafId + ", .impiLen = " + this.impiLen + ", .impi = " + this.impi + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.nafLen);
        hwBlob.putString(8 + j, this.nafId);
        hwBlob.putInt32(24 + j, this.impiLen);
        hwBlob.putString(32 + j, this.impi);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(48);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
