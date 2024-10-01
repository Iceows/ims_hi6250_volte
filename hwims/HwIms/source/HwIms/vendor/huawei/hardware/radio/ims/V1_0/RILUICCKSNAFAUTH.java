package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILUICCKSNAFAUTH.class */
public final class RILUICCKSNAFAUTH {
    public final RILUICCKSNAFAUTHPARAMS authParams = new RILUICCKSNAFAUTHPARAMS();
    public int authType;

    public static final ArrayList<RILUICCKSNAFAUTH> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILUICCKSNAFAUTH> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 56, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILUICCKSNAFAUTH riluiccksnafauth = new RILUICCKSNAFAUTH();
            riluiccksnafauth.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 56);
            arrayList.add(riluiccksnafauth);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILUICCKSNAFAUTH> arrayList) {
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
        if (obj != null && obj.getClass() == RILUICCKSNAFAUTH.class) {
            RILUICCKSNAFAUTH riluiccksnafauth = (RILUICCKSNAFAUTH) obj;
            return this.authType == riluiccksnafauth.authType && HidlSupport.deepEquals(this.authParams, riluiccksnafauth.authParams);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.authType))), Integer.valueOf(HidlSupport.deepHashCode(this.authParams)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.authType = hwBlob.getInt32(0 + j);
        this.authParams.readEmbeddedFromParcel(hwParcel, hwBlob, 8 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(56L), 0L);
    }

    public final String toString() {
        return "{.authType = " + RILUICCAUTHTYPEENUM.toString(this.authType) + ", .authParams = " + this.authParams + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.authType);
        this.authParams.writeEmbeddedToBlob(hwBlob, 8 + j);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(56);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
