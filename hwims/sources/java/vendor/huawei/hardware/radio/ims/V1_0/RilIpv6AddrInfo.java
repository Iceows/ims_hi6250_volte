package vendor.huawei.hardware.radio.ims.V1_0;

import android.os.HidlSupport;
import android.os.HwBlob;
import android.os.HwParcel;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: C:\Users\MOUNIERR\AppData\Local\Temp\jadx-13900076406109865746.dex */
public final class RilIpv6AddrInfo {
    public final byte[] clipV6 = new byte[16];
    public final byte[] netmaskV6 = new byte[16];
    public final byte[] gateV6 = new byte[16];
    public final byte[] dhcpV6 = new byte[16];
    public final byte[] pDnsV6 = new byte[16];
    public final byte[] sDnsV6 = new byte[16];

    public final boolean equals(Object otherObject) {
        if (this == otherObject) {
            return true;
        }
        if (otherObject == null || otherObject.getClass() != RilIpv6AddrInfo.class) {
            return false;
        }
        RilIpv6AddrInfo other = (RilIpv6AddrInfo) otherObject;
        if (HidlSupport.deepEquals(this.clipV6, other.clipV6) && HidlSupport.deepEquals(this.netmaskV6, other.netmaskV6) && HidlSupport.deepEquals(this.gateV6, other.gateV6) && HidlSupport.deepEquals(this.dhcpV6, other.dhcpV6) && HidlSupport.deepEquals(this.pDnsV6, other.pDnsV6) && HidlSupport.deepEquals(this.sDnsV6, other.sDnsV6)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(HidlSupport.deepHashCode(this.clipV6)), Integer.valueOf(HidlSupport.deepHashCode(this.netmaskV6)), Integer.valueOf(HidlSupport.deepHashCode(this.gateV6)), Integer.valueOf(HidlSupport.deepHashCode(this.dhcpV6)), Integer.valueOf(HidlSupport.deepHashCode(this.pDnsV6)), Integer.valueOf(HidlSupport.deepHashCode(this.sDnsV6)));
    }

    public final String toString() {
        return "{.clipV6 = " + Arrays.toString(this.clipV6) + ", .netmaskV6 = " + Arrays.toString(this.netmaskV6) + ", .gateV6 = " + Arrays.toString(this.gateV6) + ", .dhcpV6 = " + Arrays.toString(this.dhcpV6) + ", .pDnsV6 = " + Arrays.toString(this.pDnsV6) + ", .sDnsV6 = " + Arrays.toString(this.sDnsV6) + "}";
    }

    public final void readFromParcel(HwParcel parcel) {
        HwBlob blob = parcel.readBuffer(96L);
        readEmbeddedFromParcel(parcel, blob, 0L);
    }

    public static final ArrayList<RilIpv6AddrInfo> readVectorFromParcel(HwParcel parcel) {
        ArrayList<RilIpv6AddrInfo> _hidl_vec = new ArrayList<>();
        HwBlob _hidl_blob = parcel.readBuffer(16L);
        int _hidl_vec_size = _hidl_blob.getInt32(8L);
        HwBlob childBlob = parcel.readEmbeddedBuffer(_hidl_vec_size * 96, _hidl_blob.handle(), 0L, true);
        _hidl_vec.clear();
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            RilIpv6AddrInfo _hidl_vec_element = new RilIpv6AddrInfo();
            _hidl_vec_element.readEmbeddedFromParcel(parcel, childBlob, _hidl_index_0 * 96);
            _hidl_vec.add(_hidl_vec_element);
        }
        return _hidl_vec;
    }

    public final void readEmbeddedFromParcel(HwParcel parcel, HwBlob _hidl_blob, long _hidl_offset) {
        long _hidl_array_offset_0 = 0 + _hidl_offset;
        _hidl_blob.copyToInt8Array(_hidl_array_offset_0, this.clipV6, 16);
        long _hidl_array_offset_02 = 16 + _hidl_offset;
        _hidl_blob.copyToInt8Array(_hidl_array_offset_02, this.netmaskV6, 16);
        long _hidl_array_offset_03 = 32 + _hidl_offset;
        _hidl_blob.copyToInt8Array(_hidl_array_offset_03, this.gateV6, 16);
        long _hidl_array_offset_04 = 48 + _hidl_offset;
        _hidl_blob.copyToInt8Array(_hidl_array_offset_04, this.dhcpV6, 16);
        long _hidl_array_offset_05 = 64 + _hidl_offset;
        _hidl_blob.copyToInt8Array(_hidl_array_offset_05, this.pDnsV6, 16);
        long _hidl_array_offset_06 = 80 + _hidl_offset;
        _hidl_blob.copyToInt8Array(_hidl_array_offset_06, this.sDnsV6, 16);
    }

    public final void writeToParcel(HwParcel parcel) {
        HwBlob _hidl_blob = new HwBlob(96);
        writeEmbeddedToBlob(_hidl_blob, 0L);
        parcel.writeBuffer(_hidl_blob);
    }

    public static final void writeVectorToParcel(HwParcel parcel, ArrayList<RilIpv6AddrInfo> _hidl_vec) {
        HwBlob _hidl_blob = new HwBlob(16);
        int _hidl_vec_size = _hidl_vec.size();
        _hidl_blob.putInt32(8L, _hidl_vec_size);
        _hidl_blob.putBool(12L, false);
        HwBlob childBlob = new HwBlob(_hidl_vec_size * 96);
        for (int _hidl_index_0 = 0; _hidl_index_0 < _hidl_vec_size; _hidl_index_0++) {
            _hidl_vec.get(_hidl_index_0).writeEmbeddedToBlob(childBlob, _hidl_index_0 * 96);
        }
        _hidl_blob.putBlob(0L, childBlob);
        parcel.writeBuffer(_hidl_blob);
    }

    public final void writeEmbeddedToBlob(HwBlob _hidl_blob, long _hidl_offset) {
        long _hidl_array_offset_0 = 0 + _hidl_offset;
        _hidl_blob.putInt8Array(_hidl_array_offset_0, this.clipV6);
        long _hidl_array_offset_02 = 16 + _hidl_offset;
        _hidl_blob.putInt8Array(_hidl_array_offset_02, this.netmaskV6);
        long _hidl_array_offset_03 = 32 + _hidl_offset;
        _hidl_blob.putInt8Array(_hidl_array_offset_03, this.gateV6);
        long _hidl_array_offset_04 = 48 + _hidl_offset;
        _hidl_blob.putInt8Array(_hidl_array_offset_04, this.dhcpV6);
        long _hidl_array_offset_05 = 64 + _hidl_offset;
        _hidl_blob.putInt8Array(_hidl_array_offset_05, this.pDnsV6);
        long _hidl_array_offset_06 = 80 + _hidl_offset;
        _hidl_blob.putInt8Array(_hidl_array_offset_06, this.sDnsV6);
    }
}
