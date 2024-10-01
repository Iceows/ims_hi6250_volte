package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILUICCAUTHRESPONSE.class */
public final class RILUICCAUTHRESPONSE {
    public int authStatus;
    public final RILUICCAUTHRESPCHALLENGETYPE authChallenge = new RILUICCAUTHRESPCHALLENGETYPE();
    public final RILUICCAUTHRESPSYNCFAILTYPE authSyncfail = new RILUICCAUTHRESPSYNCFAILTYPE();

    public static final ArrayList<RILUICCAUTHRESPONSE> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILUICCAUTHRESPONSE> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 104, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILUICCAUTHRESPONSE riluiccauthresponse = new RILUICCAUTHRESPONSE();
            riluiccauthresponse.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 104);
            arrayList.add(riluiccauthresponse);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILUICCAUTHRESPONSE> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 104);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 104);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILUICCAUTHRESPONSE.class) {
            RILUICCAUTHRESPONSE riluiccauthresponse = (RILUICCAUTHRESPONSE) obj;
            return this.authStatus == riluiccauthresponse.authStatus && HidlSupport.deepEquals(this.authChallenge, riluiccauthresponse.authChallenge) && HidlSupport.deepEquals(this.authSyncfail, riluiccauthresponse.authSyncfail);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.authStatus))), Integer.valueOf(HidlSupport.deepHashCode(this.authChallenge)), Integer.valueOf(HidlSupport.deepHashCode(this.authSyncfail)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.authStatus = hwBlob.getInt32(0 + j);
        this.authChallenge.readEmbeddedFromParcel(hwParcel, hwBlob, 8 + j);
        this.authSyncfail.readEmbeddedFromParcel(hwParcel, hwBlob, 80 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(104L), 0L);
    }

    public final String toString() {
        return "{.authStatus = " + RILUICCAUTHRESPSTATUSTYPEENUM.toString(this.authStatus) + ", .authChallenge = " + this.authChallenge + ", .authSyncfail = " + this.authSyncfail + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.authStatus);
        this.authChallenge.writeEmbeddedToBlob(hwBlob, 8 + j);
        this.authSyncfail.writeEmbeddedToBlob(hwBlob, 80 + j);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(104);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
