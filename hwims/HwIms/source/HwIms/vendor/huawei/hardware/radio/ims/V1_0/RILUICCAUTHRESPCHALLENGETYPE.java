package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILUICCAUTHRESPCHALLENGETYPE.class */
public final class RILUICCAUTHRESPCHALLENGETYPE {
    public final RILUICCAUTHRESTYPE resData = new RILUICCAUTHRESTYPE();
    public final RILUICCAUTHIKTYPE ikData = new RILUICCAUTHIKTYPE();
    public final RILUICCAUTHCKTYPE ckData = new RILUICCAUTHCKTYPE();

    public static final ArrayList<RILUICCAUTHRESPCHALLENGETYPE> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILUICCAUTHRESPCHALLENGETYPE> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 72, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILUICCAUTHRESPCHALLENGETYPE riluiccauthrespchallengetype = new RILUICCAUTHRESPCHALLENGETYPE();
            riluiccauthrespchallengetype.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 72);
            arrayList.add(riluiccauthrespchallengetype);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILUICCAUTHRESPCHALLENGETYPE> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 72);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 72);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILUICCAUTHRESPCHALLENGETYPE.class) {
            RILUICCAUTHRESPCHALLENGETYPE riluiccauthrespchallengetype = (RILUICCAUTHRESPCHALLENGETYPE) obj;
            return HidlSupport.deepEquals(this.resData, riluiccauthrespchallengetype.resData) && HidlSupport.deepEquals(this.ikData, riluiccauthrespchallengetype.ikData) && HidlSupport.deepEquals(this.ckData, riluiccauthrespchallengetype.ckData);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.resData)), Integer.valueOf(HidlSupport.deepHashCode(this.ikData)), Integer.valueOf(HidlSupport.deepHashCode(this.ckData)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.resData.readEmbeddedFromParcel(hwParcel, hwBlob, 0 + j);
        this.ikData.readEmbeddedFromParcel(hwParcel, hwBlob, 24 + j);
        this.ckData.readEmbeddedFromParcel(hwParcel, hwBlob, 48 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(72L), 0L);
    }

    public final String toString() {
        return "{.resData = " + this.resData + ", .ikData = " + this.ikData + ", .ckData = " + this.ckData + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        this.resData.writeEmbeddedToBlob(hwBlob, 0 + j);
        this.ikData.writeEmbeddedToBlob(hwBlob, 24 + j);
        this.ckData.writeEmbeddedToBlob(hwBlob, 48 + j);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(72);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
