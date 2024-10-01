package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: RilIpv4AddrInfo.class */
public final class RilIpv4AddrInfo {
    public final byte[] clipV4 = new byte[4];
    public final byte[] netmaskV4 = new byte[4];
    public final byte[] gateV4 = new byte[4];
    public final byte[] dhcpV4 = new byte[4];
    public final byte[] pDnsV4 = new byte[4];
    public final byte[] sDnsV4 = new byte[4];

    public static final ArrayList<RilIpv4AddrInfo> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RilIpv4AddrInfo> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 24, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RilIpv4AddrInfo rilIpv4AddrInfo = new RilIpv4AddrInfo();
            rilIpv4AddrInfo.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 24);
            arrayList.add(rilIpv4AddrInfo);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RilIpv4AddrInfo> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 24);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 24);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RilIpv4AddrInfo.class) {
            RilIpv4AddrInfo rilIpv4AddrInfo = (RilIpv4AddrInfo) obj;
            return HidlSupport.deepEquals(this.clipV4, rilIpv4AddrInfo.clipV4) && HidlSupport.deepEquals(this.netmaskV4, rilIpv4AddrInfo.netmaskV4) && HidlSupport.deepEquals(this.gateV4, rilIpv4AddrInfo.gateV4) && HidlSupport.deepEquals(this.dhcpV4, rilIpv4AddrInfo.dhcpV4) && HidlSupport.deepEquals(this.pDnsV4, rilIpv4AddrInfo.pDnsV4) && HidlSupport.deepEquals(this.sDnsV4, rilIpv4AddrInfo.sDnsV4);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.clipV4)), Integer.valueOf(HidlSupport.deepHashCode(this.netmaskV4)), Integer.valueOf(HidlSupport.deepHashCode(this.gateV4)), Integer.valueOf(HidlSupport.deepHashCode(this.dhcpV4)), Integer.valueOf(HidlSupport.deepHashCode(this.pDnsV4)), Integer.valueOf(HidlSupport.deepHashCode(this.sDnsV4)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        hwBlob.copyToInt8Array(0 + j, this.clipV4, 4);
        hwBlob.copyToInt8Array(4 + j, this.netmaskV4, 4);
        hwBlob.copyToInt8Array(8 + j, this.gateV4, 4);
        hwBlob.copyToInt8Array(12 + j, this.dhcpV4, 4);
        hwBlob.copyToInt8Array(16 + j, this.pDnsV4, 4);
        hwBlob.copyToInt8Array(20 + j, this.sDnsV4, 4);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(24L), 0L);
    }

    public final String toString() {
        return "{.clipV4 = " + Arrays.toString(this.clipV4) + ", .netmaskV4 = " + Arrays.toString(this.netmaskV4) + ", .gateV4 = " + Arrays.toString(this.gateV4) + ", .dhcpV4 = " + Arrays.toString(this.dhcpV4) + ", .pDnsV4 = " + Arrays.toString(this.pDnsV4) + ", .sDnsV4 = " + Arrays.toString(this.sDnsV4) + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt8Array(0 + j, this.clipV4);
        hwBlob.putInt8Array(4 + j, this.netmaskV4);
        hwBlob.putInt8Array(8 + j, this.gateV4);
        hwBlob.putInt8Array(12 + j, this.dhcpV4);
        hwBlob.putInt8Array(16 + j, this.pDnsV4);
        hwBlob.putInt8Array(20 + j, this.sDnsV4);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(24);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
