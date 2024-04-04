package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Objects;

/* loaded from: IpAddrInfo.class */
public final class IpAddrInfo {
    public final RilIpv4AddrInfo ipv4AddrInfo = new RilIpv4AddrInfo();
    public final RilIpv6AddrInfo ipv6AddrInfo = new RilIpv6AddrInfo();

    public static final ArrayList<IpAddrInfo> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<IpAddrInfo> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 120, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            IpAddrInfo ipAddrInfo = new IpAddrInfo();
            ipAddrInfo.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 120);
            arrayList.add(ipAddrInfo);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<IpAddrInfo> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 120);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 120);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == IpAddrInfo.class) {
            IpAddrInfo ipAddrInfo = (IpAddrInfo) obj;
            return HidlSupport.deepEquals(this.ipv4AddrInfo, ipAddrInfo.ipv4AddrInfo) && HidlSupport.deepEquals(this.ipv6AddrInfo, ipAddrInfo.ipv6AddrInfo);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.ipv4AddrInfo)), Integer.valueOf(HidlSupport.deepHashCode(this.ipv6AddrInfo)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        this.ipv4AddrInfo.readEmbeddedFromParcel(hwParcel, hwBlob, 0 + j);
        this.ipv6AddrInfo.readEmbeddedFromParcel(hwParcel, hwBlob, 24 + j);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(120L), 0L);
    }

    public final String toString() {
        return "{.ipv4AddrInfo = " + this.ipv4AddrInfo + ", .ipv6AddrInfo = " + this.ipv6AddrInfo + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        this.ipv4AddrInfo.writeEmbeddedToBlob(hwBlob, 0 + j);
        this.ipv6AddrInfo.writeEmbeddedToBlob(hwBlob, 24 + j);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(120);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
