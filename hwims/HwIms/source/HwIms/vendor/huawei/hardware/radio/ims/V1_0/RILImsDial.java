package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILImsDial.class */
public final class RILImsDial {
    public String address = new String();
    public final RILImsCallDetails callDetails = new RILImsCallDetails();
    public int clir;

    public static final ArrayList<RILImsDial> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsDial> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 32, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsDial rILImsDial = new RILImsDial();
            rILImsDial.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 32);
            arrayList.add(rILImsDial);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsDial> arrayList) {
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
        if (obj != null && obj.getClass() == RILImsDial.class) {
            RILImsDial rILImsDial = (RILImsDial) obj;
            return HidlSupport.deepEquals(this.address, rILImsDial.address) && this.clir == rILImsDial.clir && HidlSupport.deepEquals(this.callDetails, rILImsDial.callDetails);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.address)), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.clir))), Integer.valueOf(HidlSupport.deepHashCode(this.callDetails)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.address = hwBlob.getString(j + 0);
        hwParcel.readEmbeddedBuffer(this.address.getBytes().length + 1, hwBlob.handle(), j + 0 + 0, false);
        this.clir = hwBlob.getInt32(16 + j);
        this.callDetails.readEmbeddedFromParcel(hwParcel, hwBlob, 20 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(32L), 0L);
    }

    public final String toString() {
        return "{.address = " + this.address + ", .clir = " + this.clir + ", .callDetails = " + this.callDetails + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putString(0 + j, this.address);
        hwBlob.putInt32(16 + j, this.clir);
        this.callDetails.writeEmbeddedToBlob(hwBlob, 20 + j);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(32);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
