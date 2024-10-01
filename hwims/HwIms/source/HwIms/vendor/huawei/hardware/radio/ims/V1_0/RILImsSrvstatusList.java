package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: RILImsSrvstatusList.class */
public final class RILImsSrvstatusList {
    public int nSrvstatusinfo;
    public final RILImsServiceStatus[] srvstatusinfo = new RILImsServiceStatus[4];

    public static final ArrayList<RILImsSrvstatusList> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsSrvstatusList> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 264, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsSrvstatusList rILImsSrvstatusList = new RILImsSrvstatusList();
            rILImsSrvstatusList.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 264);
            arrayList.add(rILImsSrvstatusList);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsSrvstatusList> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 264);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 264);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILImsSrvstatusList.class) {
            RILImsSrvstatusList rILImsSrvstatusList = (RILImsSrvstatusList) obj;
            return this.nSrvstatusinfo == rILImsSrvstatusList.nSrvstatusinfo && HidlSupport.deepEquals(this.srvstatusinfo, rILImsSrvstatusList.srvstatusinfo);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.nSrvstatusinfo))), Integer.valueOf(HidlSupport.deepHashCode(this.srvstatusinfo)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.nSrvstatusinfo = hwBlob.getInt32(0 + j);
        long j2 = 8 + j;
        for (int i = 0; i < 4; i++) {
            this.srvstatusinfo[i] = new RILImsServiceStatus();
            this.srvstatusinfo[i].readEmbeddedFromParcel(hwParcel, hwBlob, j2);
            j2 += 64;
        }
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(264L), 0L);
    }

    public final String toString() {
        return "{.nSrvstatusinfo = " + this.nSrvstatusinfo + ", .srvstatusinfo = " + Arrays.toString(this.srvstatusinfo) + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.nSrvstatusinfo);
        long j2 = 8 + j;
        for (int i = 0; i < 4; i++) {
            this.srvstatusinfo[i].writeEmbeddedToBlob(hwBlob, j2);
            j2 += 64;
        }
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(264);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
