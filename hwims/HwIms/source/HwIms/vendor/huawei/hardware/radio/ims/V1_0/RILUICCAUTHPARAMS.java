package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILUICCAUTHPARAMS.class */
public final class RILUICCAUTHPARAMS {
    public int authLen;
    public int randLen;
    public String rand = new String();
    public String auth = new String();

    public static final ArrayList<RILUICCAUTHPARAMS> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILUICCAUTHPARAMS> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 48, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILUICCAUTHPARAMS riluiccauthparams = new RILUICCAUTHPARAMS();
            riluiccauthparams.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 48);
            arrayList.add(riluiccauthparams);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILUICCAUTHPARAMS> arrayList) {
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
        if (obj != null && obj.getClass() == RILUICCAUTHPARAMS.class) {
            RILUICCAUTHPARAMS riluiccauthparams = (RILUICCAUTHPARAMS) obj;
            return this.randLen == riluiccauthparams.randLen && HidlSupport.deepEquals(this.rand, riluiccauthparams.rand) && this.authLen == riluiccauthparams.authLen && HidlSupport.deepEquals(this.auth, riluiccauthparams.auth);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.randLen))), Integer.valueOf(HidlSupport.deepHashCode(this.rand)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.authLen))), Integer.valueOf(HidlSupport.deepHashCode(this.auth)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.randLen = hwBlob.getInt32(j + 0);
        this.rand = hwBlob.getString(j + 8);
        hwParcel.readEmbeddedBuffer(this.rand.getBytes().length + 1, hwBlob.handle(), j + 8 + 0, false);
        this.authLen = hwBlob.getInt32(j + 24);
        this.auth = hwBlob.getString(j + 32);
        hwParcel.readEmbeddedBuffer(this.auth.getBytes().length + 1, hwBlob.handle(), j + 32 + 0, false);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(48L), 0L);
    }

    public final String toString() {
        return "{.randLen = " + this.randLen + ", .rand = " + this.rand + ", .authLen = " + this.authLen + ", .auth = " + this.auth + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.randLen);
        hwBlob.putString(8 + j, this.rand);
        hwBlob.putInt32(24 + j, this.authLen);
        hwBlob.putString(32 + j, this.auth);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(48);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
