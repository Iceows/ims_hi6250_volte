package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: RILImsServiceStatus.class */
public final class RILImsServiceStatus {
    public int callType;
    public int isValid;
    public int nAcctechstatus;
    public int srvStatus;
    public final RILImsUserData userData = new RILImsUserData();
    public final RILImsStatusForAccTech[] acctechstatus = new RILImsStatusForAccTech[1];

    public static final ArrayList<RILImsServiceStatus> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsServiceStatus> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 64, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsServiceStatus rILImsServiceStatus = new RILImsServiceStatus();
            rILImsServiceStatus.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 64);
            arrayList.add(rILImsServiceStatus);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsServiceStatus> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 64);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 64);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILImsServiceStatus.class) {
            RILImsServiceStatus rILImsServiceStatus = (RILImsServiceStatus) obj;
            return this.isValid == rILImsServiceStatus.isValid && this.callType == rILImsServiceStatus.callType && this.srvStatus == rILImsServiceStatus.srvStatus && HidlSupport.deepEquals(this.userData, rILImsServiceStatus.userData) && this.nAcctechstatus == rILImsServiceStatus.nAcctechstatus && HidlSupport.deepEquals(this.acctechstatus, rILImsServiceStatus.acctechstatus);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.isValid))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.callType))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.srvStatus))), Integer.valueOf(HidlSupport.deepHashCode(this.userData)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.nAcctechstatus))), Integer.valueOf(HidlSupport.deepHashCode(this.acctechstatus)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.isValid = hwBlob.getInt32(0 + j);
        this.callType = hwBlob.getInt32(4 + j);
        this.srvStatus = hwBlob.getInt32(8 + j);
        this.userData.readEmbeddedFromParcel(hwParcel, hwBlob, j + 16);
        this.nAcctechstatus = hwBlob.getInt32(40 + j);
        long j2 = 44 + j;
        for (int i = 0; i < 1; i++) {
            this.acctechstatus[i] = new RILImsStatusForAccTech();
            this.acctechstatus[i].readEmbeddedFromParcel(hwParcel, hwBlob, j2);
            j2 += 16;
        }
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(64L), 0L);
    }

    public final String toString() {
        return "{.isValid = " + this.isValid + ", .callType = " + RILImsCallType.toString(this.callType) + ", .srvStatus = " + RILImsStatusType.toString(this.srvStatus) + ", .userData = " + this.userData + ", .nAcctechstatus = " + this.nAcctechstatus + ", .acctechstatus = " + Arrays.toString(this.acctechstatus) + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.isValid);
        hwBlob.putInt32(4 + j, this.callType);
        hwBlob.putInt32(8 + j, this.srvStatus);
        this.userData.writeEmbeddedToBlob(hwBlob, j + 16);
        hwBlob.putInt32(40 + j, this.nAcctechstatus);
        long j2 = 44 + j;
        for (int i = 0; i < 1; i++) {
            this.acctechstatus[i].writeEmbeddedToBlob(hwBlob, j2);
            j2 += 16;
        }
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(64);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
