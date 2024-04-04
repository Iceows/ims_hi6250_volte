package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: RILImsDataConnectInd.class */
public final class RILImsDataConnectInd {
    public int addrType;
    public int domain;
    public final IpAddrInfo ipAddress = new IpAddrInfo();

    public static final ArrayList<RILImsDataConnectInd> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RILImsDataConnectInd> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 128, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RILImsDataConnectInd rILImsDataConnectInd = new RILImsDataConnectInd();
            rILImsDataConnectInd.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 128);
            arrayList.add(rILImsDataConnectInd);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RILImsDataConnectInd> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 128);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 128);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RILImsDataConnectInd.class) {
            RILImsDataConnectInd rILImsDataConnectInd = (RILImsDataConnectInd) obj;
            return this.domain == rILImsDataConnectInd.domain && this.addrType == rILImsDataConnectInd.addrType && HidlSupport.deepEquals(this.ipAddress, rILImsDataConnectInd.ipAddress);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.domain))), Integer.valueOf(HidlSupport.deepHashCode(Integer.valueOf(this.addrType))), Integer.valueOf(HidlSupport.deepHashCode(this.ipAddress)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.domain = hwBlob.getInt32(0 + j);
        this.addrType = hwBlob.getInt32(4 + j);
        this.ipAddress.readEmbeddedFromParcel(hwParcel, hwBlob, 8 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(128L), 0L);
    }

    public final String toString() {
        return "{.domain = " + this.domain + ", .addrType = " + RILIpAddrType.toString(this.addrType) + ", .ipAddress = " + this.ipAddress + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt32(0 + j, this.domain);
        hwBlob.putInt32(4 + j, this.addrType);
        this.ipAddress.writeEmbeddedToBlob(hwBlob, 8 + j);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(128);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
