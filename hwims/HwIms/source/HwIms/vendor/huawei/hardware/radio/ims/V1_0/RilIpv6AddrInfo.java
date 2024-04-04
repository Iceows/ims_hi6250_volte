package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: RilIpv6AddrInfo.class */
public final class RilIpv6AddrInfo {
    public final byte[] clipV6 = new byte[16];
    public final byte[] netmaskV6 = new byte[16];
    public final byte[] gateV6 = new byte[16];
    public final byte[] dhcpV6 = new byte[16];
    public final byte[] pDnsV6 = new byte[16];
    public final byte[] sDnsV6 = new byte[16];

    public static final ArrayList<RilIpv6AddrInfo> readVectorFromParcel(HwParcel hwParcel) {
        ArrayList<RilIpv6AddrInfo> arrayList = new ArrayList<>();
        HwBlob readBuffer = hwParcel.readBuffer(16L);
        int int32 = readBuffer.getInt32(8L);
        HwBlob readEmbeddedBuffer = hwParcel.readEmbeddedBuffer(int32 * 96, readBuffer.handle(), 0L, true);
        arrayList.clear();
        for (int i = 0; i < int32; i++) {
            RilIpv6AddrInfo rilIpv6AddrInfo = new RilIpv6AddrInfo();
            rilIpv6AddrInfo.readEmbeddedFromParcel(hwParcel, readEmbeddedBuffer, i * 96);
            arrayList.add(rilIpv6AddrInfo);
        }
        return arrayList;
    }

    public static final void writeVectorToParcel(HwParcel hwParcel, ArrayList<RilIpv6AddrInfo> arrayList) {
        HwBlob hwBlob = new HwBlob(16);
        int size = arrayList.size();
        hwBlob.putInt32(8L, size);
        hwBlob.putBool(12L, false);
        HwBlob hwBlob2 = new HwBlob(size * 96);
        for (int i = 0; i < size; i++) {
            arrayList.get(i).writeEmbeddedToBlob(hwBlob2, i * 96);
        }
        hwBlob.putBlob(0L, hwBlob2);
        hwParcel.writeBuffer(hwBlob);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && obj.getClass() == RilIpv6AddrInfo.class) {
            RilIpv6AddrInfo rilIpv6AddrInfo = (RilIpv6AddrInfo) obj;
            return HidlSupport.deepEquals(this.clipV6, rilIpv6AddrInfo.clipV6) && HidlSupport.deepEquals(this.netmaskV6, rilIpv6AddrInfo.netmaskV6) && HidlSupport.deepEquals(this.gateV6, rilIpv6AddrInfo.gateV6) && HidlSupport.deepEquals(this.dhcpV6, rilIpv6AddrInfo.dhcpV6) && HidlSupport.deepEquals(this.pDnsV6, rilIpv6AddrInfo.pDnsV6) && HidlSupport.deepEquals(this.sDnsV6, rilIpv6AddrInfo.sDnsV6);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.clipV6)), Integer.valueOf(HidlSupport.deepHashCode(this.netmaskV6)), Integer.valueOf(HidlSupport.deepHashCode(this.gateV6)), Integer.valueOf(HidlSupport.deepHashCode(this.dhcpV6)), Integer.valueOf(HidlSupport.deepHashCode(this.pDnsV6)), Integer.valueOf(HidlSupport.deepHashCode(this.sDnsV6)));
    }

    public final void readEmbeddedFromParcel(HwParcel hwParcel, HwBlob hwBlob, long j) {
        hwBlob.copyToInt8Array(0 + j, this.clipV6, 16);
        hwBlob.copyToInt8Array(16 + j, this.netmaskV6, 16);
        hwBlob.copyToInt8Array(32 + j, this.gateV6, 16);
        hwBlob.copyToInt8Array(48 + j, this.dhcpV6, 16);
        hwBlob.copyToInt8Array(64 + j, this.pDnsV6, 16);
        hwBlob.copyToInt8Array(80 + j, this.sDnsV6, 16);
    }

    public final void readFromParcel(HwParcel hwParcel) {
        readEmbeddedFromParcel(hwParcel, hwParcel.readBuffer(96L), 0L);
    }

    public final String toString() {
        return "{.clipV6 = " + Arrays.toString(this.clipV6) + ", .netmaskV6 = " + Arrays.toString(this.netmaskV6) + ", .gateV6 = " + Arrays.toString(this.gateV6) + ", .dhcpV6 = " + Arrays.toString(this.dhcpV6) + ", .pDnsV6 = " + Arrays.toString(this.pDnsV6) + ", .sDnsV6 = " + Arrays.toString(this.sDnsV6) + "}";
    }

    public final void writeEmbeddedToBlob(HwBlob hwBlob, long j) {
        hwBlob.putInt8Array(0 + j, this.clipV6);
        hwBlob.putInt8Array(16 + j, this.netmaskV6);
        hwBlob.putInt8Array(32 + j, this.gateV6);
        hwBlob.putInt8Array(48 + j, this.dhcpV6);
        hwBlob.putInt8Array(64 + j, this.pDnsV6);
        hwBlob.putInt8Array(80 + j, this.sDnsV6);
    }

    public final void writeToParcel(HwParcel hwParcel) {
        HwBlob hwBlob = new HwBlob(96);
        writeEmbeddedToBlob(hwBlob, 0L);
        hwParcel.writeBuffer(hwBlob);
    }
}
