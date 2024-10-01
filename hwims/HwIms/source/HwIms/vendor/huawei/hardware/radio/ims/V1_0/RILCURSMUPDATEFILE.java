package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILCURSMUPDATEFILE.class */
public final class RILCURSMUPDATEFILE {
    public int appType;
    public int fileId;
    public final RILCURSMFILEPARAMS fileParams = new RILCURSMFILEPARAMS();

    public static final ArrayList<RILCURSMUPDATEFILE> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILCURSMUPDATEFILE> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 32, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILCURSMUPDATEFILE rilcursmupdatefile = new RILCURSMUPDATEFILE();
            rilcursmupdatefile.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 32);
            arrayList.add(rilcursmupdatefile);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILCURSMUPDATEFILE> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 32);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 32);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILCURSMUPDATEFILE.class) {
            RILCURSMUPDATEFILE rilcursmupdatefile = (RILCURSMUPDATEFILE) obj;
            return this.appType == rilcursmupdatefile.appType && this.fileId == rilcursmupdatefile.fileId && HidlSupport.deepEquals(this.fileParams, rilcursmupdatefile.fileParams);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.appType))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.fileId))), Integer.valueOf(HidlSupport.deepHashCode(this.fileParams)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.appType = hwBlob.getInt32(0 + j);
        this.fileId = hwBlob.getInt32(4 + j);
        this.fileParams.readEmbeddedFromParcel(hwParcel, hwBlob, 8 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(32L), 0L);
    }

    public final String toString() {
        return "{.appType = " + RILCURSMAPPTYPEENUM.toString(this.appType) + ", .fileId = " + this.fileId + ", .fileParams = " + this.fileParams + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.appType);
        hwBlob.putInt32(4 + j, this.fileId);
        this.fileParams.writeEmbeddedToBlob(hwBlob, 8 + j);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(32);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
